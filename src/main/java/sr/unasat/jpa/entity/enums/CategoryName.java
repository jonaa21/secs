package sr.unasat.jpa.entity.enums;

public enum CategoryName {

    RAM("RAM", "Random Access Memory module"),
    STORAGE("STORAGE", "Storage drive"),
    CPU("CPU", "Central Processing Unit"),
    GPU("GPU", "Graphics Processing Unit"),
    KEYBOARD("KEYBOARD", "Keyboard"),
    MOUSE("MOUSE", "Mouse"),
    MONITOR("MONITOR", "Monitor"),
    CABLE("CABLE", "Cable");

    private String category;
    private String description;

    CategoryName(String category, String description) {
        this.category = category;
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public String getDescription() {
        return description;
    }
}
