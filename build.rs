fn main() {
    cc::Build::new()
        .file("src/lib.c")
        .compile("libdefined-in-c.a");
}
