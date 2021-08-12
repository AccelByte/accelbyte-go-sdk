// Code generated by go-swagger; DO NOT EDIT.

package users

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

// NewPublicGetUserByUserIDV2Params creates a new PublicGetUserByUserIDV2Params object
// with the default values initialized.
func NewPublicGetUserByUserIDV2Params() *PublicGetUserByUserIDV2Params {
	var ()
	return &PublicGetUserByUserIDV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserByUserIDV2ParamsWithTimeout creates a new PublicGetUserByUserIDV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserByUserIDV2ParamsWithTimeout(timeout time.Duration) *PublicGetUserByUserIDV2Params {
	var ()
	return &PublicGetUserByUserIDV2Params{

		timeout: timeout,
	}
}

// NewPublicGetUserByUserIDV2ParamsWithContext creates a new PublicGetUserByUserIDV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserByUserIDV2ParamsWithContext(ctx context.Context) *PublicGetUserByUserIDV2Params {
	var ()
	return &PublicGetUserByUserIDV2Params{

		Context: ctx,
	}
}

// NewPublicGetUserByUserIDV2ParamsWithHTTPClient creates a new PublicGetUserByUserIDV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserByUserIDV2ParamsWithHTTPClient(client *http.Client) *PublicGetUserByUserIDV2Params {
	var ()
	return &PublicGetUserByUserIDV2Params{
		HTTPClient: client,
	}
}

/*PublicGetUserByUserIDV2Params contains all the parameters to send to the API endpoint
for the public get user by user ID v2 operation typically these are written to a http.Request
*/
type PublicGetUserByUserIDV2Params struct {

	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the public get user by user ID v2 params
func (o *PublicGetUserByUserIDV2Params) WithTimeout(timeout time.Duration) *PublicGetUserByUserIDV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user by user ID v2 params
func (o *PublicGetUserByUserIDV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user by user ID v2 params
func (o *PublicGetUserByUserIDV2Params) WithContext(ctx context.Context) *PublicGetUserByUserIDV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user by user ID v2 params
func (o *PublicGetUserByUserIDV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the public get user by user ID v2 params
func (o *PublicGetUserByUserIDV2Params) WithHTTPClient(client *http.Client) *PublicGetUserByUserIDV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user by user ID v2 params
func (o *PublicGetUserByUserIDV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the public get user by user ID v2 params
func (o *PublicGetUserByUserIDV2Params) WithNamespace(namespace string) *PublicGetUserByUserIDV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user by user ID v2 params
func (o *PublicGetUserByUserIDV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get user by user ID v2 params
func (o *PublicGetUserByUserIDV2Params) WithUserID(userID string) *PublicGetUserByUserIDV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user by user ID v2 params
func (o *PublicGetUserByUserIDV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserByUserIDV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
