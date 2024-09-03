package com.sit21c.common.vo;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.util.ArrayList;
import java.util.List;

public class NewsScraperVo {
    public static class News {
        private String title;
        private String link;
        private String imageUrl;
        private String description;

        public News(String title, String link, String imageUrl, String description) {
            this.title = title;
            this.link = link;
            this.imageUrl = imageUrl;
            this.description = description;
        }

        // Getters
        public String getTitle() { return title; }
        public String getLink() { return link; }
        public String getImageUrl() { return imageUrl; }
        public String getDescription() { return description; }
    }

    private String getOriginalNewsImage(String newsUrl) {
        try {
            Document doc = Jsoup.connect(newsUrl)
                    .userAgent("Mozilla/5.0")
                    .get();
            
            // 대표적인 뉴스 사이트들의 메타 태그 패턴을 확인
            String imageUrl = doc.select("meta[property=og:image]").attr("content");
            if (imageUrl.isEmpty()) {
                imageUrl = doc.select("meta[name=twitter:image]").attr("content");
            }
            if (imageUrl.isEmpty()) {
                // 다른 이미지 추출 방법을 시도 (예: 첫 번째 큰 이미지)
                Elements images = doc.select("img[src~=(?i)\\.(png|jpe?g)]");
                for (Element img : images) {
                    if (img.hasAttr("width") && img.hasAttr("height")) {
                        int width = Integer.parseInt(img.attr("width"));
                        int height = Integer.parseInt(img.attr("height"));
                        if (width > 300 && height > 200) {
                            imageUrl = img.attr("src");
                            break;
                        }
                    }
                }
            }
            return imageUrl;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public List<News> scrapeNews() {
        List<News> newsList = new ArrayList<>();
        try {
            Document doc = Jsoup.connect("https://search.naver.com/search.naver?where=news&query=소프트아이텍")
                    .userAgent("Mozilla/5.0")
                    .get();

            Elements articles = doc.select("ul.list_news li");

            for (Element article : articles) {
                String title = article.select("a.news_tit").text();
                String link = article.select("a.news_tit").attr("href");
                String description = article.select("div.dsc_wrap").text();

                // "소프트아이텍" 키워드가 정확히 포함된 뉴스만 추가
                if (title.contains("소프트아이텍") || description.contains("소프트아이텍")) {
                    String imageUrl = getOriginalNewsImage(link);

                    if (imageUrl.isEmpty()) {
                        imageUrl = "/img/default_news_image.jpg"; // 기본 이미지 경로로 대체
                    }

                    if (description.length() > 50) {
                        description = description.substring(0, 50) + "...";
                    }

                    newsList.add(new News(title, link, imageUrl, description));

                    if (newsList.size() >= 3) break;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return newsList;
    }
}