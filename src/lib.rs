extern "C" {
    fn defined_in_c() -> i32;
}

#[no_mangle]
pub unsafe extern "C" fn defined_in_rust() -> i32 {
    defined_in_c()
}
