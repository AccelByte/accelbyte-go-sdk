// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewCreateClientParams creates a new CreateClientParams object
// with the default values initialized.
func NewCreateClientParams() *CreateClientParams {
	var ()
	return &CreateClientParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateClientParamsWithTimeout creates a new CreateClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateClientParamsWithTimeout(timeout time.Duration) *CreateClientParams {
	var ()
	return &CreateClientParams{

		timeout: timeout,
	}
}

// NewCreateClientParamsWithContext creates a new CreateClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateClientParamsWithContext(ctx context.Context) *CreateClientParams {
	var ()
	return &CreateClientParams{

		Context: ctx,
	}
}

// NewCreateClientParamsWithHTTPClient creates a new CreateClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateClientParamsWithHTTPClient(client *http.Client) *CreateClientParams {
	var ()
	return &CreateClientParams{
		HTTPClient: client,
	}
}

/*CreateClientParams contains all the parameters to send to the API endpoint
for the create client operation typically these are written to a http.Request
*/
type CreateClientParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ClientmodelClientCreateRequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create client params
func (o *CreateClientParams) WithTimeout(timeout time.Duration) *CreateClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create client params
func (o *CreateClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create client params
func (o *CreateClientParams) WithContext(ctx context.Context) *CreateClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create client params
func (o *CreateClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create client params
func (o *CreateClientParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create client params
func (o *CreateClientParams) WithHTTPClient(client *http.Client) *CreateClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create client params
func (o *CreateClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create client params
func (o *CreateClientParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateClientParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create client params
func (o *CreateClientParams) WithBody(body *iamclientmodels.ClientmodelClientCreateRequest) *CreateClientParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create client params
func (o *CreateClientParams) SetBody(body *iamclientmodels.ClientmodelClientCreateRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *CreateClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
