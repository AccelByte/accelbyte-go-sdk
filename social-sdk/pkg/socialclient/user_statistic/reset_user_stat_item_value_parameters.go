// Code generated by go-swagger; DO NOT EDIT.

package user_statistic

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

// NewResetUserStatItemValueParams creates a new ResetUserStatItemValueParams object
// with the default values initialized.
func NewResetUserStatItemValueParams() *ResetUserStatItemValueParams {
	var ()
	return &ResetUserStatItemValueParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewResetUserStatItemValueParamsWithTimeout creates a new ResetUserStatItemValueParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewResetUserStatItemValueParamsWithTimeout(timeout time.Duration) *ResetUserStatItemValueParams {
	var ()
	return &ResetUserStatItemValueParams{

		timeout: timeout,
	}
}

// NewResetUserStatItemValueParamsWithContext creates a new ResetUserStatItemValueParams object
// with the default values initialized, and the ability to set a context for a request
func NewResetUserStatItemValueParamsWithContext(ctx context.Context) *ResetUserStatItemValueParams {
	var ()
	return &ResetUserStatItemValueParams{

		Context: ctx,
	}
}

// NewResetUserStatItemValueParamsWithHTTPClient creates a new ResetUserStatItemValueParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewResetUserStatItemValueParamsWithHTTPClient(client *http.Client) *ResetUserStatItemValueParams {
	var ()
	return &ResetUserStatItemValueParams{
		HTTPClient: client,
	}
}

/*ResetUserStatItemValueParams contains all the parameters to send to the API endpoint
for the reset user stat item value operation typically these are written to a http.Request
*/
type ResetUserStatItemValueParams struct {

	/*Namespace
	  namespace

	*/
	Namespace string
	/*StatCode
	  stat code

	*/
	StatCode string
	/*UserID
	  user ID

	*/
	UserID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the reset user stat item value params
func (o *ResetUserStatItemValueParams) WithTimeout(timeout time.Duration) *ResetUserStatItemValueParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the reset user stat item value params
func (o *ResetUserStatItemValueParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the reset user stat item value params
func (o *ResetUserStatItemValueParams) WithContext(ctx context.Context) *ResetUserStatItemValueParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the reset user stat item value params
func (o *ResetUserStatItemValueParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the reset user stat item value params
func (o *ResetUserStatItemValueParams) WithHTTPClient(client *http.Client) *ResetUserStatItemValueParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the reset user stat item value params
func (o *ResetUserStatItemValueParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the reset user stat item value params
func (o *ResetUserStatItemValueParams) WithNamespace(namespace string) *ResetUserStatItemValueParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the reset user stat item value params
func (o *ResetUserStatItemValueParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the reset user stat item value params
func (o *ResetUserStatItemValueParams) WithStatCode(statCode string) *ResetUserStatItemValueParams {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the reset user stat item value params
func (o *ResetUserStatItemValueParams) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WithUserID adds the userID to the reset user stat item value params
func (o *ResetUserStatItemValueParams) WithUserID(userID string) *ResetUserStatItemValueParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the reset user stat item value params
func (o *ResetUserStatItemValueParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *ResetUserStatItemValueParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param statCode
	if err := r.SetPathParam("statCode", o.StatCode); err != nil {
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
