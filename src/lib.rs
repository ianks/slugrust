extern crate slugify;
#[macro_use]
extern crate ruru;

use slugify::slugify;

use ruru::{Class, Object, RString};

methods!(
    RString,
    itself,

    fn string_slugify() -> RString {
        let to_slugify = itself.to_string();
        let slugged = slugify!(&to_slugify);
        RString::new(&slugged)
    }
);


#[no_mangle]
pub extern fn init_slugrust() {
    Class::from_existing("String").define(|itself| {
        itself.def("slugify", string_slugify);
    });
}
