import Text.Pandoc
import qualified Data.Text as T
import qualified Data.Text.IO as TIO

main :: IO ()
main = do
  result <- runIO $ do
    doc <- readMarkdown def (T.pack "[testing](url)")
    writeRST def doc
  rst <- handleError result
  TIO.putStrLn rst