// Code generated by go-swagger; DO NOT EDIT.

package public_player_record

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

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// NewPostPlayerRecordHandlerV1Params creates a new PostPlayerRecordHandlerV1Params object
// with the default values initialized.
func NewPostPlayerRecordHandlerV1Params() *PostPlayerRecordHandlerV1Params {
	var ()
	return &PostPlayerRecordHandlerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPostPlayerRecordHandlerV1ParamsWithTimeout creates a new PostPlayerRecordHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPostPlayerRecordHandlerV1ParamsWithTimeout(timeout time.Duration) *PostPlayerRecordHandlerV1Params {
	var ()
	return &PostPlayerRecordHandlerV1Params{

		timeout: timeout,
	}
}

// NewPostPlayerRecordHandlerV1ParamsWithContext creates a new PostPlayerRecordHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewPostPlayerRecordHandlerV1ParamsWithContext(ctx context.Context) *PostPlayerRecordHandlerV1Params {
	var ()
	return &PostPlayerRecordHandlerV1Params{

		Context: ctx,
	}
}

// NewPostPlayerRecordHandlerV1ParamsWithHTTPClient creates a new PostPlayerRecordHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPostPlayerRecordHandlerV1ParamsWithHTTPClient(client *http.Client) *PostPlayerRecordHandlerV1Params {
	var ()
	return &PostPlayerRecordHandlerV1Params{
		HTTPClient: client,
	}
}

/*PostPlayerRecordHandlerV1Params contains all the parameters to send to the API endpoint
for the post player record handler v1 operation typically these are written to a http.Request
*/
type PostPlayerRecordHandlerV1Params struct {

	/*Body*/
	Body cloudsaveclientmodels.ModelsPlayerRecordRequest
	/*Key
	  key of record

	*/
	Key string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID of record owner

	*/
	UserID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the post player record handler v1 params
func (o *PostPlayerRecordHandlerV1Params) WithTimeout(timeout time.Duration) *PostPlayerRecordHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the post player record handler v1 params
func (o *PostPlayerRecordHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the post player record handler v1 params
func (o *PostPlayerRecordHandlerV1Params) WithContext(ctx context.Context) *PostPlayerRecordHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the post player record handler v1 params
func (o *PostPlayerRecordHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the post player record handler v1 params
func (o *PostPlayerRecordHandlerV1Params) WithHTTPClient(client *http.Client) *PostPlayerRecordHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the post player record handler v1 params
func (o *PostPlayerRecordHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithBody adds the body to the post player record handler v1 params
func (o *PostPlayerRecordHandlerV1Params) WithBody(body cloudsaveclientmodels.ModelsPlayerRecordRequest) *PostPlayerRecordHandlerV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the post player record handler v1 params
func (o *PostPlayerRecordHandlerV1Params) SetBody(body cloudsaveclientmodels.ModelsPlayerRecordRequest) {
	o.Body = body
}

// WithKey adds the key to the post player record handler v1 params
func (o *PostPlayerRecordHandlerV1Params) WithKey(key string) *PostPlayerRecordHandlerV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the post player record handler v1 params
func (o *PostPlayerRecordHandlerV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the post player record handler v1 params
func (o *PostPlayerRecordHandlerV1Params) WithNamespace(namespace string) *PostPlayerRecordHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the post player record handler v1 params
func (o *PostPlayerRecordHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the post player record handler v1 params
func (o *PostPlayerRecordHandlerV1Params) WithUserID(userID string) *PostPlayerRecordHandlerV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the post player record handler v1 params
func (o *PostPlayerRecordHandlerV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PostPlayerRecordHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param key
	if err := r.SetPathParam("key", o.Key); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userID
	if err := r.SetPathParam("userID", o.UserID); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
