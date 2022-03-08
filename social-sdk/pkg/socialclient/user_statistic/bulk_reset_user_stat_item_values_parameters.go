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

// NewBulkResetUserStatItemValuesParams creates a new BulkResetUserStatItemValuesParams object
// with the default values initialized.
func NewBulkResetUserStatItemValuesParams() *BulkResetUserStatItemValuesParams {
	var ()
	return &BulkResetUserStatItemValuesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkResetUserStatItemValuesParamsWithTimeout creates a new BulkResetUserStatItemValuesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkResetUserStatItemValuesParamsWithTimeout(timeout time.Duration) *BulkResetUserStatItemValuesParams {
	var ()
	return &BulkResetUserStatItemValuesParams{

		timeout: timeout,
	}
}

// NewBulkResetUserStatItemValuesParamsWithContext creates a new BulkResetUserStatItemValuesParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkResetUserStatItemValuesParamsWithContext(ctx context.Context) *BulkResetUserStatItemValuesParams {
	var ()
	return &BulkResetUserStatItemValuesParams{

		Context: ctx,
	}
}

// NewBulkResetUserStatItemValuesParamsWithHTTPClient creates a new BulkResetUserStatItemValuesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkResetUserStatItemValuesParamsWithHTTPClient(client *http.Client) *BulkResetUserStatItemValuesParams {
	var ()
	return &BulkResetUserStatItemValuesParams{
		HTTPClient: client,
	}
}

/*BulkResetUserStatItemValuesParams contains all the parameters to send to the API endpoint
for the bulk reset user stat item values operation typically these are written to a http.Request
*/
type BulkResetUserStatItemValuesParams struct {

	/*AdditionalKey
	  additional key

	*/
	AdditionalKey *string
	/*Body*/
	Body []*socialclientmodels.ADTOObjectForResettingUserStatItems
	/*Namespace
	  namespace

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

// WithTimeout adds the timeout to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) WithTimeout(timeout time.Duration) *BulkResetUserStatItemValuesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) WithContext(ctx context.Context) *BulkResetUserStatItemValuesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) WithHTTPClient(client *http.Client) *BulkResetUserStatItemValuesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithAdditionalKey adds the additionalKey to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) WithAdditionalKey(additionalKey *string) *BulkResetUserStatItemValuesParams {
	o.SetAdditionalKey(additionalKey)
	return o
}

// SetAdditionalKey adds the additionalKey to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) SetAdditionalKey(additionalKey *string) {
	o.AdditionalKey = additionalKey
}

// WithBody adds the body to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) WithBody(body []*socialclientmodels.ADTOObjectForResettingUserStatItems) *BulkResetUserStatItemValuesParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) SetBody(body []*socialclientmodels.ADTOObjectForResettingUserStatItems) {
	o.Body = body
}

// WithNamespace adds the namespace to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) WithNamespace(namespace string) *BulkResetUserStatItemValuesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) WithUserID(userID string) *BulkResetUserStatItemValuesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the bulk reset user stat item values params
func (o *BulkResetUserStatItemValuesParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *BulkResetUserStatItemValuesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.AdditionalKey != nil {

		// query param additionalKey
		var qrAdditionalKey string
		if o.AdditionalKey != nil {
			qrAdditionalKey = *o.AdditionalKey
		}
		qAdditionalKey := qrAdditionalKey
		if qAdditionalKey != "" {
			if err := r.SetQueryParam("additionalKey", qAdditionalKey); err != nil {
				return err
			}
		}

	}

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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