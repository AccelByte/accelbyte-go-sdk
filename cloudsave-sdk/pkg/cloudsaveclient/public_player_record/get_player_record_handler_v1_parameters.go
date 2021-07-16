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
)

// NewGetPlayerRecordHandlerV1Params creates a new GetPlayerRecordHandlerV1Params object
// with the default values initialized.
func NewGetPlayerRecordHandlerV1Params() *GetPlayerRecordHandlerV1Params {
	var ()
	return &GetPlayerRecordHandlerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPlayerRecordHandlerV1ParamsWithTimeout creates a new GetPlayerRecordHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPlayerRecordHandlerV1ParamsWithTimeout(timeout time.Duration) *GetPlayerRecordHandlerV1Params {
	var ()
	return &GetPlayerRecordHandlerV1Params{

		timeout: timeout,
	}
}

// NewGetPlayerRecordHandlerV1ParamsWithContext creates a new GetPlayerRecordHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetPlayerRecordHandlerV1ParamsWithContext(ctx context.Context) *GetPlayerRecordHandlerV1Params {
	var ()
	return &GetPlayerRecordHandlerV1Params{

		Context: ctx,
	}
}

// NewGetPlayerRecordHandlerV1ParamsWithHTTPClient creates a new GetPlayerRecordHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPlayerRecordHandlerV1ParamsWithHTTPClient(client *http.Client) *GetPlayerRecordHandlerV1Params {
	var ()
	return &GetPlayerRecordHandlerV1Params{
		HTTPClient: client,
	}
}

/*GetPlayerRecordHandlerV1Params contains all the parameters to send to the API endpoint
for the get player record handler v1 operation typically these are written to a http.Request
*/
type GetPlayerRecordHandlerV1Params struct {

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

// WithTimeout adds the timeout to the get player record handler v1 params
func (o *GetPlayerRecordHandlerV1Params) WithTimeout(timeout time.Duration) *GetPlayerRecordHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get player record handler v1 params
func (o *GetPlayerRecordHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get player record handler v1 params
func (o *GetPlayerRecordHandlerV1Params) WithContext(ctx context.Context) *GetPlayerRecordHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get player record handler v1 params
func (o *GetPlayerRecordHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the get player record handler v1 params
func (o *GetPlayerRecordHandlerV1Params) WithHTTPClient(client *http.Client) *GetPlayerRecordHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get player record handler v1 params
func (o *GetPlayerRecordHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithKey adds the key to the get player record handler v1 params
func (o *GetPlayerRecordHandlerV1Params) WithKey(key string) *GetPlayerRecordHandlerV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the get player record handler v1 params
func (o *GetPlayerRecordHandlerV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the get player record handler v1 params
func (o *GetPlayerRecordHandlerV1Params) WithNamespace(namespace string) *GetPlayerRecordHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get player record handler v1 params
func (o *GetPlayerRecordHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get player record handler v1 params
func (o *GetPlayerRecordHandlerV1Params) WithUserID(userID string) *GetPlayerRecordHandlerV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get player record handler v1 params
func (o *GetPlayerRecordHandlerV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetPlayerRecordHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
