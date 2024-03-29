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

// NewCreatePolicyParams creates a new CreatePolicyParams object
// with the default values initialized.
func NewCreatePolicyParams() *CreatePolicyParams {
	var ()
	return &CreatePolicyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreatePolicyParamsWithTimeout creates a new CreatePolicyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreatePolicyParamsWithTimeout(timeout time.Duration) *CreatePolicyParams {
	var ()
	return &CreatePolicyParams{

		timeout: timeout,
	}
}

// NewCreatePolicyParamsWithContext creates a new CreatePolicyParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreatePolicyParamsWithContext(ctx context.Context) *CreatePolicyParams {
	var ()
	return &CreatePolicyParams{

		Context: ctx,
	}
}

// NewCreatePolicyParamsWithHTTPClient creates a new CreatePolicyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreatePolicyParamsWithHTTPClient(client *http.Client) *CreatePolicyParams {
	var ()
	return &CreatePolicyParams{
		HTTPClient: client,
	}
}

/*CreatePolicyParams contains all the parameters to send to the API endpoint
for the create policy operation typically these are written to a http.Request
*/
type CreatePolicyParams struct {

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

// WithTimeout adds the timeout to the create policy params
func (o *CreatePolicyParams) WithTimeout(timeout time.Duration) *CreatePolicyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create policy params
func (o *CreatePolicyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create policy params
func (o *CreatePolicyParams) WithContext(ctx context.Context) *CreatePolicyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create policy params
func (o *CreatePolicyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create policy params
func (o *CreatePolicyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create policy params
func (o *CreatePolicyParams) WithHTTPClient(client *http.Client) *CreatePolicyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create policy params
func (o *CreatePolicyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create policy params
func (o *CreatePolicyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreatePolicyParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create policy params
func (o *CreatePolicyParams) WithBody(body *legalclientmodels.CreateBasePolicyRequest) *CreatePolicyParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create policy params
func (o *CreatePolicyParams) SetBody(body *legalclientmodels.CreateBasePolicyRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *CreatePolicyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
