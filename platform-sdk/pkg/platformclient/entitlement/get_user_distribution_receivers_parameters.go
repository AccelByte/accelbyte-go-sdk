// Code generated by go-swagger; DO NOT EDIT.

package entitlement

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

// NewGetUserDistributionReceiversParams creates a new GetUserDistributionReceiversParams object
// with the default values initialized.
func NewGetUserDistributionReceiversParams() *GetUserDistributionReceiversParams {
	var ()
	return &GetUserDistributionReceiversParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserDistributionReceiversParamsWithTimeout creates a new GetUserDistributionReceiversParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserDistributionReceiversParamsWithTimeout(timeout time.Duration) *GetUserDistributionReceiversParams {
	var ()
	return &GetUserDistributionReceiversParams{

		timeout: timeout,
	}
}

// NewGetUserDistributionReceiversParamsWithContext creates a new GetUserDistributionReceiversParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserDistributionReceiversParamsWithContext(ctx context.Context) *GetUserDistributionReceiversParams {
	var ()
	return &GetUserDistributionReceiversParams{

		Context: ctx,
	}
}

// NewGetUserDistributionReceiversParamsWithHTTPClient creates a new GetUserDistributionReceiversParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserDistributionReceiversParamsWithHTTPClient(client *http.Client) *GetUserDistributionReceiversParams {
	var ()
	return &GetUserDistributionReceiversParams{
		HTTPClient: client,
	}
}

/*GetUserDistributionReceiversParams contains all the parameters to send to the API endpoint
for the get user distribution receivers operation typically these are written to a http.Request
*/
type GetUserDistributionReceiversParams struct {

	/*Namespace
	  game namespace

	*/
	Namespace string
	/*UserID
	  game user id

	*/
	UserID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the get user distribution receivers params
func (o *GetUserDistributionReceiversParams) WithTimeout(timeout time.Duration) *GetUserDistributionReceiversParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user distribution receivers params
func (o *GetUserDistributionReceiversParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user distribution receivers params
func (o *GetUserDistributionReceiversParams) WithContext(ctx context.Context) *GetUserDistributionReceiversParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user distribution receivers params
func (o *GetUserDistributionReceiversParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the get user distribution receivers params
func (o *GetUserDistributionReceiversParams) WithHTTPClient(client *http.Client) *GetUserDistributionReceiversParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user distribution receivers params
func (o *GetUserDistributionReceiversParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the get user distribution receivers params
func (o *GetUserDistributionReceiversParams) WithNamespace(namespace string) *GetUserDistributionReceiversParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user distribution receivers params
func (o *GetUserDistributionReceiversParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user distribution receivers params
func (o *GetUserDistributionReceiversParams) WithUserID(userID string) *GetUserDistributionReceiversParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user distribution receivers params
func (o *GetUserDistributionReceiversParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserDistributionReceiversParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
