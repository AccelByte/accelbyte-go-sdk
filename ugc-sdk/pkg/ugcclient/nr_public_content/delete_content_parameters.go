// Code generated by go-swagger; DO NOT EDIT.

package nr_public_content

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewDeleteContentParams creates a new DeleteContentParams object
// with the default values initialized.
func NewDeleteContentParams() *DeleteContentParams {
	var ()
	return &DeleteContentParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteContentParamsWithTimeout creates a new DeleteContentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteContentParamsWithTimeout(timeout time.Duration) *DeleteContentParams {
	var ()
	return &DeleteContentParams{

		timeout: timeout,
	}
}

// NewDeleteContentParamsWithContext creates a new DeleteContentParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteContentParamsWithContext(ctx context.Context) *DeleteContentParams {
	var ()
	return &DeleteContentParams{

		Context: ctx,
	}
}

// NewDeleteContentParamsWithHTTPClient creates a new DeleteContentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteContentParamsWithHTTPClient(client *http.Client) *DeleteContentParams {
	var ()
	return &DeleteContentParams{
		HTTPClient: client,
	}
}

/*DeleteContentParams contains all the parameters to send to the API endpoint
for the delete content operation typically these are written to a http.Request
*/
type DeleteContentParams struct {

	/*ChannelID
	  channel ID

	*/
	ChannelID string
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the delete content params
func (o *DeleteContentParams) WithTimeout(timeout time.Duration) *DeleteContentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete content params
func (o *DeleteContentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete content params
func (o *DeleteContentParams) WithContext(ctx context.Context) *DeleteContentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete content params
func (o *DeleteContentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the delete content params
func (o *DeleteContentParams) WithHTTPClient(client *http.Client) *DeleteContentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete content params
func (o *DeleteContentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithChannelID adds the channelID to the delete content params
func (o *DeleteContentParams) WithChannelID(channelID string) *DeleteContentParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the delete content params
func (o *DeleteContentParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithContentID adds the contentID to the delete content params
func (o *DeleteContentParams) WithContentID(contentID string) *DeleteContentParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the delete content params
func (o *DeleteContentParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the delete content params
func (o *DeleteContentParams) WithNamespace(namespace string) *DeleteContentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete content params
func (o *DeleteContentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete content params
func (o *DeleteContentParams) WithUserID(userID string) *DeleteContentParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete content params
func (o *DeleteContentParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteContentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param channelId
	if err := r.SetPathParam("channelId", o.ChannelID); err != nil {
		return err
	}

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
