let Type_ = ./Type.dhall

let Footer = ./Footer.dhall

let Image = ./Image.dhall

let Thumbnail = Image

let Video = ./Video.dhall

let Provider = ./Provider.dhall

let Author = ./Author.dhall

let Field = ./Field.dhall

in  { Type =
        { title : Optional Text
        , type : Optional Type_
        , description : Optional Text
        , url : Optional Text
        , timestamp : Optional Text
        , color : Optional Natural
        , footer : Optional Footer.Type
        , image : Optional Image.Type
        , thumbnail : Optional Thumbnail.Type
        , video : Optional Video.Type
        , provider : Optional Provider.Type
        , author : Optional Author.Type
        , fields : Optional (List Field.Type)
        }
    , default =
        { title = None Text
        , type = None Type_
        , description = None Text
        , url = None Text
        , timestamp = None Text
        , color = None Natural
        , footer = None Footer.Type
        , image = None Image.Type
        , thumbnail = None Thumbnail.Type
        , video = None Video.Type
        , provider = None Provider.Type
        , author = None Author.Type
        , fields = None (List Field.Type)
      }
    }