import gleam/list

pub type Message {
  Message(code: String, args: List(String))
}

pub fn add_args(message: Message, args: List(String)) -> Message {
  Message(
    code: message.code,
    args: message.args
      |> list.append(args),
  )
}
