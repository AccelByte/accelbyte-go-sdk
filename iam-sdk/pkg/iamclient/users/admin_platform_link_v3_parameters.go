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

// NewAdminPlatformLinkV3Params creates a new AdminPlatformLinkV3Params object
// with the default values initialized.
func NewAdminPlatformLinkV3Params() *AdminPlatformLinkV3Params {
	var ()
	return &AdminPlatformLinkV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPlatformLinkV3ParamsWithTimeout creates a new AdminPlatformLinkV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPlatformLinkV3ParamsWithTimeout(timeout time.Duration) *AdminPlatformLinkV3Params {
	var ()
	return &AdminPlatformLinkV3Params{

		timeout: timeout,
	}
}

// NewAdminPlatformLinkV3ParamsWithContext creates a new AdminPlatformLinkV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPlatformLinkV3ParamsWithContext(ctx context.Context) *AdminPlatformLinkV3Params {
	var ()
	return &AdminPlatformLinkV3Params{

		Context: ctx,
	}
}

// NewAdminPlatformLinkV3ParamsWithHTTPClient creates a new AdminPlatformLinkV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPlatformLinkV3ParamsWithHTTPClient(client *http.Client) *AdminPlatformLinkV3Params {
	var ()
	return &AdminPlatformLinkV3Params{
		HTTPClient: client,
	}
}

/*AdminPlatformLinkV3Params contains all the parameters to send to the API endpoint
for the admin platform link v3 operation typically these are written to a http.Request
*/
type AdminPlatformLinkV3Params struct {

	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string
	/*Ticket
	  Ticket from platform

	*/
	Ticket string
	/*UserID
	  User ID

	*/
	UserID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) WithTimeout(timeout time.Duration) *AdminPlatformLinkV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) WithContext(ctx context.Context) *AdminPlatformLinkV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) WithHTTPClient(client *http.Client) *AdminPlatformLinkV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) WithNamespace(namespace string) *AdminPlatformLinkV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) WithPlatformID(platformID string) *AdminPlatformLinkV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithTicket adds the ticket to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) WithTicket(ticket string) *AdminPlatformLinkV3Params {
	o.SetTicket(ticket)
	return o
}

// SetTicket adds the ticket to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) SetTicket(ticket string) {
	o.Ticket = ticket
}

// WithUserID adds the userID to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) WithUserID(userID string) *AdminPlatformLinkV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin platform link v3 params
func (o *AdminPlatformLinkV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPlatformLinkV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
		return err
	}

	// form param ticket
	frTicket := o.Ticket
	fTicket := frTicket
	if fTicket != "" {
		if err := r.SetFormParam("ticket", fTicket); err != nil {
			return err
		}
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
