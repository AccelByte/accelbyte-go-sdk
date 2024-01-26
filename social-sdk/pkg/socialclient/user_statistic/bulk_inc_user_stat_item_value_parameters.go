// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// NewBulkIncUserStatItemValueParams creates a new BulkIncUserStatItemValueParams object
// with the default values initialized.
func NewBulkIncUserStatItemValueParams() *BulkIncUserStatItemValueParams {
	var ()
	return &BulkIncUserStatItemValueParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkIncUserStatItemValueParamsWithTimeout creates a new BulkIncUserStatItemValueParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkIncUserStatItemValueParamsWithTimeout(timeout time.Duration) *BulkIncUserStatItemValueParams {
	var ()
	return &BulkIncUserStatItemValueParams{

		timeout: timeout,
	}
}

// NewBulkIncUserStatItemValueParamsWithContext creates a new BulkIncUserStatItemValueParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkIncUserStatItemValueParamsWithContext(ctx context.Context) *BulkIncUserStatItemValueParams {
	var ()
	return &BulkIncUserStatItemValueParams{

		Context: ctx,
	}
}

// NewBulkIncUserStatItemValueParamsWithHTTPClient creates a new BulkIncUserStatItemValueParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkIncUserStatItemValueParamsWithHTTPClient(client *http.Client) *BulkIncUserStatItemValueParams {
	var ()
	return &BulkIncUserStatItemValueParams{
		HTTPClient: client,
	}
}

/*BulkIncUserStatItemValueParams contains all the parameters to send to the API endpoint
for the bulk inc user stat item value operation typically these are written to a http.Request
*/
type BulkIncUserStatItemValueParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*socialclientmodels.BulkUserStatItemInc
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the bulk inc user stat item value params
func (o *BulkIncUserStatItemValueParams) WithTimeout(timeout time.Duration) *BulkIncUserStatItemValueParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk inc user stat item value params
func (o *BulkIncUserStatItemValueParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk inc user stat item value params
func (o *BulkIncUserStatItemValueParams) WithContext(ctx context.Context) *BulkIncUserStatItemValueParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk inc user stat item value params
func (o *BulkIncUserStatItemValueParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk inc user stat item value params
func (o *BulkIncUserStatItemValueParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk inc user stat item value params
func (o *BulkIncUserStatItemValueParams) WithHTTPClient(client *http.Client) *BulkIncUserStatItemValueParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk inc user stat item value params
func (o *BulkIncUserStatItemValueParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk inc user stat item value params
func (o *BulkIncUserStatItemValueParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *BulkIncUserStatItemValueParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the bulk inc user stat item value params
func (o *BulkIncUserStatItemValueParams) WithBody(body []*socialclientmodels.BulkUserStatItemInc) *BulkIncUserStatItemValueParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk inc user stat item value params
func (o *BulkIncUserStatItemValueParams) SetBody(body []*socialclientmodels.BulkUserStatItemInc) {
	o.Body = body
}

// WithNamespace adds the namespace to the bulk inc user stat item value params
func (o *BulkIncUserStatItemValueParams) WithNamespace(namespace string) *BulkIncUserStatItemValueParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk inc user stat item value params
func (o *BulkIncUserStatItemValueParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *BulkIncUserStatItemValueParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
