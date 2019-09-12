
--Программа должна считывать с командной строки имена двух файлов и выводить на экран те строки этих файлов, которые отличаются друг от друга.

module Main where
import System.Directory
import System.IO
import Control.Monad
 
main = do
    text1 <- readFile "text1.txt"
    text2 <- readFile "text2.txt"
    let lines1 = lines text1
        lines2 = lines text2
    forM (zip lines1 lines2) $ \ (l1, l2) -> do
        when (l1 /= l2 ) $ do
            putStrLn l1
            putStrLn l2





{-           main = do 
                let z = ["Каково Ваше общее мнение об этом курсе?: ","Ваше мнение о лекциях?: ","Что Вы думаете о том, что занятия назначены на субботу?: ","Что Вы думаете о заданиях для лабораторных работ?: ","Насколько трудным был для Вас этот курс?: "]
                putStrLn "Введите количество анкетируемых: "
                n <- getLine 
                let g = read n :: Int
                sl <- forM [1..g] (\ x -> do
                    putStrLn ""
                    b <- forM_ (zip ([1..5] z) (\(t,k) -> do
                        putStrLn $ k
                        a <-getLine 
                        let e = (zip [x] [a])
                        return (head e))
                    return b)
                print $ sl -}