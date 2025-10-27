// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// NewOldCreatePolicyParams creates a new OldCreatePolicyParams object
// with the default values initialized.
func NewOldCreatePolicyParams() *OldCreatePolicyParams {
	var ()
	return &OldCreatePolicyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewOldCreatePolicyParamsWithTimeout creates a new OldCreatePolicyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewOldCreatePolicyParamsWithTimeout(timeout time.Duration) *OldCreatePolicyParams {
	var ()
	return &OldCreatePolicyParams{

		timeout: timeout,
	}
}

// NewOldCreatePolicyParamsWithContext creates a new OldCreatePolicyParams object
// with the default values initialized, and the ability to set a context for a request
func NewOldCreatePolicyParamsWithContext(ctx context.Context) *OldCreatePolicyParams {
	var ()
	return &OldCreatePolicyParams{

		Context: ctx,
	}
}

// NewOldCreatePolicyParamsWithHTTPClient creates a new OldCreatePolicyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewOldCreatePolicyParamsWithHTTPClient(client *http.Client) *OldCreatePolicyParams {
	var ()
	return &OldCreatePolicyParams{
		HTTPClient: client,
	}
}

/*OldCreatePolicyParams contains all the parameters to send to the API endpoint
for the old create policy operation typically these are written to a http.Request
*/
type OldCreatePolicyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *legalclientmodels.CreateBasePolicyRequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the old create policy params
func (o *OldCreatePolicyParams) WithTimeout(timeout time.Duration) *OldCreatePolicyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the old create policy params
func (o *OldCreatePolicyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the old create policy params
func (o *OldCreatePolicyParams) WithContext(ctx context.Context) *OldCreatePolicyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the old create policy params
func (o *OldCreatePolicyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the old create policy params
func (o *OldCreatePolicyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the old create policy params
func (o *OldCreatePolicyParams) WithHTTPClient(client *http.Client) *OldCreatePolicyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the old create policy params
func (o *OldCreatePolicyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the old create policy params
func (o *OldCreatePolicyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *OldCreatePolicyParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the old create policy params
func (o *OldCreatePolicyParams) WithBody(body *legalclientmodels.CreateBasePolicyRequest) *OldCreatePolicyParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the old create policy params
func (o *OldCreatePolicyParams) SetBody(body *legalclientmodels.CreateBasePolicyRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *OldCreatePolicyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
