fn get_int() -> i16 {
    3
}

#[cfg(test)]
mod tests {
    // use crate::get_int;
    use super::*;

  #[test]
  #[should_panic]
  fn test_dummy() {
      assert_eq!(get_int(), 8);
  }
}