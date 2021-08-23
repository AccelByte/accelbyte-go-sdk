// Code generated by go-swagger; DO NOT EDIT.

package notification

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

// NewGetAllStoredNotificationsV1Params creates a new GetAllStoredNotificationsV1Params object
// with the default values initialized.
func NewGetAllStoredNotificationsV1Params() *GetAllStoredNotificationsV1Params {
	var ()
	return &GetAllStoredNotificationsV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAllStoredNotificationsV1ParamsWithTimeout creates a new GetAllStoredNotificationsV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAllStoredNotificationsV1ParamsWithTimeout(timeout time.Duration) *GetAllStoredNotificationsV1Params {
	var ()
	return &GetAllStoredNotificationsV1Params{

		timeout: timeout,
	}
}

// NewGetAllStoredNotificationsV1ParamsWithContext creates a new GetAllStoredNotificationsV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetAllStoredNotificationsV1ParamsWithContext(ctx context.Context) *GetAllStoredNotificationsV1Params {
	var ()
	return &GetAllStoredNotificationsV1Params{

		Context: ctx,
	}
}

// NewGetAllStoredNotificationsV1ParamsWithHTTPClient creates a new GetAllStoredNotificationsV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAllStoredNotificationsV1ParamsWithHTTPClient(client *http.Client) *GetAllStoredNotificationsV1Params {
	var ()
	return &GetAllStoredNotificationsV1Params{
		HTTPClient: client,
	}
}

/*GetAllStoredNotificationsV1Params contains all the parameters to send to the API endpoint
for the get all stored notifications v1 operation typically these are written to a http.Request
*/
type GetAllStoredNotificationsV1Params struct {

	/*Namespace
	  namespace

	*/
	Namespace string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the get all stored notifications v1 params
func (o *GetAllStoredNotificationsV1Params) WithTimeout(timeout time.Duration) *GetAllStoredNotificationsV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get all stored notifications v1 params
func (o *GetAllStoredNotificationsV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get all stored notifications v1 params
func (o *GetAllStoredNotificationsV1Params) WithContext(ctx context.Context) *GetAllStoredNotificationsV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get all stored notifications v1 params
func (o *GetAllStoredNotificationsV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the get all stored notifications v1 params
func (o *GetAllStoredNotificationsV1Params) WithHTTPClient(client *http.Client) *GetAllStoredNotificationsV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get all stored notifications v1 params
func (o *GetAllStoredNotificationsV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the get all stored notifications v1 params
func (o *GetAllStoredNotificationsV1Params) WithNamespace(namespace string) *GetAllStoredNotificationsV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get all stored notifications v1 params
func (o *GetAllStoredNotificationsV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetAllStoredNotificationsV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}