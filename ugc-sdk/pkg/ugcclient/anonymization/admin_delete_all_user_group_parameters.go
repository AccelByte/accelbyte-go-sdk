// Code generated by go-swagger; DO NOT EDIT.

package anonymization

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

// NewAdminDeleteAllUserGroupParams creates a new AdminDeleteAllUserGroupParams object
// with the default values initialized.
func NewAdminDeleteAllUserGroupParams() *AdminDeleteAllUserGroupParams {
	var ()
	return &AdminDeleteAllUserGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteAllUserGroupParamsWithTimeout creates a new AdminDeleteAllUserGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteAllUserGroupParamsWithTimeout(timeout time.Duration) *AdminDeleteAllUserGroupParams {
	var ()
	return &AdminDeleteAllUserGroupParams{

		timeout: timeout,
	}
}

// NewAdminDeleteAllUserGroupParamsWithContext creates a new AdminDeleteAllUserGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteAllUserGroupParamsWithContext(ctx context.Context) *AdminDeleteAllUserGroupParams {
	var ()
	return &AdminDeleteAllUserGroupParams{

		Context: ctx,
	}
}

// NewAdminDeleteAllUserGroupParamsWithHTTPClient creates a new AdminDeleteAllUserGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteAllUserGroupParamsWithHTTPClient(client *http.Client) *AdminDeleteAllUserGroupParams {
	var ()
	return &AdminDeleteAllUserGroupParams{
		HTTPClient: client,
	}
}

/*AdminDeleteAllUserGroupParams contains all the parameters to send to the API endpoint
for the admin delete all user group operation typically these are written to a http.Request
*/
type AdminDeleteAllUserGroupParams struct {

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

// WithTimeout adds the timeout to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) WithTimeout(timeout time.Duration) *AdminDeleteAllUserGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) WithContext(ctx context.Context) *AdminDeleteAllUserGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) WithHTTPClient(client *http.Client) *AdminDeleteAllUserGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) WithNamespace(namespace string) *AdminDeleteAllUserGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) WithUserID(userID string) *AdminDeleteAllUserGroupParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin delete all user group params
func (o *AdminDeleteAllUserGroupParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteAllUserGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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