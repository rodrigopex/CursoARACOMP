// Default empty project template
#ifndef DemoARACOMP_HPP_
#define DemoARACOMP_HPP_

#include <QObject>

namespace bb { namespace cascades { class Application; }}

/*!
 * @brief Application pane object
 *
 *Use this object to create and init app UI, to create context objects, to register the new meta types etc.
 */
class DemoARACOMP : public QObject
{
    Q_OBJECT
public:
    DemoARACOMP(bb::cascades::Application *app);
    virtual ~DemoARACOMP() {}
};


#endif /* DemoARACOMP_HPP_ */
