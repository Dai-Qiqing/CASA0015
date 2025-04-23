-- 用户表
CREATE TABLE IF NOT EXISTS user (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 穿搭表
CREATE TABLE IF NOT EXISTS outfit (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT,
    description TEXT,
    views INT NOT NULL,
    picture TEXT NOT NULL,
    category TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- 插入 6 条默认数据
INSERT INTO outfit (name, description, views, picture, category) 
VALUES
  ('Hat', "Cross border men's and women's couple's baseball caps paired with feather...", 0, 'hat.png', 'Comprehensive'),
  ('Winter Outfit', 'A warm and cozy winter jacket for cold weather', 0, 'winter_outfit.png', 'Winter'),
  ('Sporty Outfit', 'A comfortable and functional outfit for sports and fitness', 0, 'sporty_outfit.png', 'Sports'),
  ('Summer Outfits', 'summer outfits blending comfort with trends. Ideal for beach days or casual outings', 0, 'summer_outfits.png', 'Casual'),
  ('Ress', "One-Piece Dress, Lady's dress", 0, 'ress.png', 'Elegant Summer Outfits'),
  ('White Sweate', 'light-colored jeans', 0, 'white_sweate.png', 'Fashionable Casual Wear ');

-- 收藏表
CREATE TABLE IF NOT EXISTS favorite (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    outfit_id INT NOT NULL,
    update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 浏览历史表
CREATE TABLE IF NOT EXISTS record (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    outfit_id INT NOT NULL,
    update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

