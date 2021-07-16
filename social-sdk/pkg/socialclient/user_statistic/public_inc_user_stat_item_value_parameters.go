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

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// NewPublicIncUserStatItemValueParams creates a new PublicIncUserStatItemValueParams object
// with the default values initialized.
func NewPublicIncUserStatItemValueParams() *PublicIncUserStatItemValueParams {
	var ()
	return &PublicIncUserStatItemValueParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicIncUserStatItemValueParamsWithTimeout creates a new PublicIncUserStatItemValueParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicIncUserStatItemValueParamsWithTimeout(timeout time.Duration) *PublicIncUserStatItemValueParams {
	var ()
	return &PublicIncUserStatItemValueParams{

		timeout: timeout,
	}
}

// NewPublicIncUserStatItemValueParamsWithContext creates a new PublicIncUserStatItemValueParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicIncUserStatItemValueParamsWithContext(ctx context.Context) *PublicIncUserStatItemValueParams {
	var ()
	return &PublicIncUserStatItemValueParams{

		Context: ctx,
	}
}

// NewPublicIncUserStatItemValueParamsWithHTTPClient creates a new PublicIncUserStatItemValueParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicIncUserStatItemValueParamsWithHTTPClient(client *http.Client) *PublicIncUserStatItemValueParams {
	var ()
	return &PublicIncUserStatItemValueParams{
		HTTPClient: client,
	}
}

/*PublicIncUserStatItemValueParams contains all the parameters to send to the API endpoint
for the public inc user stat item value operation typically these are written to a http.Request
*/
type PublicIncUserStatItemValueParams struct {

	/*Body*/
	Body *socialclientmodels.StatItemInc
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

// WithTimeout adds the timeout to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) WithTimeout(timeout time.Duration) *PublicIncUserStatItemValueParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) WithContext(ctx context.Context) *PublicIncUserStatItemValueParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) WithHTTPClient(client *http.Client) *PublicIncUserStatItemValueParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithBody adds the body to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) WithBody(body *socialclientmodels.StatItemInc) *PublicIncUserStatItemValueParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) SetBody(body *socialclientmodels.StatItemInc) {
	o.Body = body
}

// WithNamespace adds the namespace to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) WithNamespace(namespace string) *PublicIncUserStatItemValueParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) WithStatCode(statCode string) *PublicIncUserStatItemValueParams {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WithUserID adds the userID to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) WithUserID(userID string) *PublicIncUserStatItemValueParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public inc user stat item value params
func (o *PublicIncUserStatItemValueParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicIncUserStatItemValueParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
