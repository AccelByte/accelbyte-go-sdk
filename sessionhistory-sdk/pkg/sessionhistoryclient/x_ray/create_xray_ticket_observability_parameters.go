// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package x_ray

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclientmodels"
)

// NewCreateXrayTicketObservabilityParams creates a new CreateXrayTicketObservabilityParams object
// with the default values initialized.
func NewCreateXrayTicketObservabilityParams() *CreateXrayTicketObservabilityParams {
	var ()
	return &CreateXrayTicketObservabilityParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateXrayTicketObservabilityParamsWithTimeout creates a new CreateXrayTicketObservabilityParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateXrayTicketObservabilityParamsWithTimeout(timeout time.Duration) *CreateXrayTicketObservabilityParams {
	var ()
	return &CreateXrayTicketObservabilityParams{

		timeout: timeout,
	}
}

// NewCreateXrayTicketObservabilityParamsWithContext creates a new CreateXrayTicketObservabilityParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateXrayTicketObservabilityParamsWithContext(ctx context.Context) *CreateXrayTicketObservabilityParams {
	var ()
	return &CreateXrayTicketObservabilityParams{

		Context: ctx,
	}
}

// NewCreateXrayTicketObservabilityParamsWithHTTPClient creates a new CreateXrayTicketObservabilityParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateXrayTicketObservabilityParamsWithHTTPClient(client *http.Client) *CreateXrayTicketObservabilityParams {
	var ()
	return &CreateXrayTicketObservabilityParams{
		HTTPClient: client,
	}
}

/*CreateXrayTicketObservabilityParams contains all the parameters to send to the API endpoint
for the create xray ticket observability operation typically these are written to a http.Request
*/
type CreateXrayTicketObservabilityParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionhistoryclientmodels.ApimodelsXRayTicketObservabilityRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create xray ticket observability params
func (o *CreateXrayTicketObservabilityParams) WithTimeout(timeout time.Duration) *CreateXrayTicketObservabilityParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create xray ticket observability params
func (o *CreateXrayTicketObservabilityParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create xray ticket observability params
func (o *CreateXrayTicketObservabilityParams) WithContext(ctx context.Context) *CreateXrayTicketObservabilityParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create xray ticket observability params
func (o *CreateXrayTicketObservabilityParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create xray ticket observability params
func (o *CreateXrayTicketObservabilityParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create xray ticket observability params
func (o *CreateXrayTicketObservabilityParams) WithHTTPClient(client *http.Client) *CreateXrayTicketObservabilityParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create xray ticket observability params
func (o *CreateXrayTicketObservabilityParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create xray ticket observability params
func (o *CreateXrayTicketObservabilityParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateXrayTicketObservabilityParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create xray ticket observability params
func (o *CreateXrayTicketObservabilityParams) WithBody(body *sessionhistoryclientmodels.ApimodelsXRayTicketObservabilityRequest) *CreateXrayTicketObservabilityParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create xray ticket observability params
func (o *CreateXrayTicketObservabilityParams) SetBody(body *sessionhistoryclientmodels.ApimodelsXRayTicketObservabilityRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the create xray ticket observability params
func (o *CreateXrayTicketObservabilityParams) WithNamespace(namespace string) *CreateXrayTicketObservabilityParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create xray ticket observability params
func (o *CreateXrayTicketObservabilityParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateXrayTicketObservabilityParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
