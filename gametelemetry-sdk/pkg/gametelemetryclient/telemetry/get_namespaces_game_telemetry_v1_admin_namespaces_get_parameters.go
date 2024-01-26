// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package telemetry

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewGetNamespacesGameTelemetryV1AdminNamespacesGetParams creates a new GetNamespacesGameTelemetryV1AdminNamespacesGetParams object
// with the default values initialized.
func NewGetNamespacesGameTelemetryV1AdminNamespacesGetParams() *GetNamespacesGameTelemetryV1AdminNamespacesGetParams {
	var ()
	return &GetNamespacesGameTelemetryV1AdminNamespacesGetParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetNamespacesGameTelemetryV1AdminNamespacesGetParamsWithTimeout creates a new GetNamespacesGameTelemetryV1AdminNamespacesGetParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetNamespacesGameTelemetryV1AdminNamespacesGetParamsWithTimeout(timeout time.Duration) *GetNamespacesGameTelemetryV1AdminNamespacesGetParams {
	var ()
	return &GetNamespacesGameTelemetryV1AdminNamespacesGetParams{

		timeout: timeout,
	}
}

// NewGetNamespacesGameTelemetryV1AdminNamespacesGetParamsWithContext creates a new GetNamespacesGameTelemetryV1AdminNamespacesGetParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetNamespacesGameTelemetryV1AdminNamespacesGetParamsWithContext(ctx context.Context) *GetNamespacesGameTelemetryV1AdminNamespacesGetParams {
	var ()
	return &GetNamespacesGameTelemetryV1AdminNamespacesGetParams{

		Context: ctx,
	}
}

// NewGetNamespacesGameTelemetryV1AdminNamespacesGetParamsWithHTTPClient creates a new GetNamespacesGameTelemetryV1AdminNamespacesGetParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetNamespacesGameTelemetryV1AdminNamespacesGetParamsWithHTTPClient(client *http.Client) *GetNamespacesGameTelemetryV1AdminNamespacesGetParams {
	var ()
	return &GetNamespacesGameTelemetryV1AdminNamespacesGetParams{
		HTTPClient: client,
	}
}

/*GetNamespacesGameTelemetryV1AdminNamespacesGetParams contains all the parameters to send to the API endpoint
for the get namespaces game telemetry v1 admin namespaces get operation typically these are written to a http.Request
*/
type GetNamespacesGameTelemetryV1AdminNamespacesGetParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get namespaces game telemetry v1 admin namespaces get params
func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetParams) WithTimeout(timeout time.Duration) *GetNamespacesGameTelemetryV1AdminNamespacesGetParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get namespaces game telemetry v1 admin namespaces get params
func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get namespaces game telemetry v1 admin namespaces get params
func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetParams) WithContext(ctx context.Context) *GetNamespacesGameTelemetryV1AdminNamespacesGetParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get namespaces game telemetry v1 admin namespaces get params
func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get namespaces game telemetry v1 admin namespaces get params
func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get namespaces game telemetry v1 admin namespaces get params
func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetParams) WithHTTPClient(client *http.Client) *GetNamespacesGameTelemetryV1AdminNamespacesGetParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get namespaces game telemetry v1 admin namespaces get params
func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get namespaces game telemetry v1 admin namespaces get params
func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *GetNamespacesGameTelemetryV1AdminNamespacesGetParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
