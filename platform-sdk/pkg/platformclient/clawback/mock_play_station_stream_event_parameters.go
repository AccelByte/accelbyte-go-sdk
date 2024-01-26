// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clawback

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewMockPlayStationStreamEventParams creates a new MockPlayStationStreamEventParams object
// with the default values initialized.
func NewMockPlayStationStreamEventParams() *MockPlayStationStreamEventParams {
	var ()
	return &MockPlayStationStreamEventParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewMockPlayStationStreamEventParamsWithTimeout creates a new MockPlayStationStreamEventParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewMockPlayStationStreamEventParamsWithTimeout(timeout time.Duration) *MockPlayStationStreamEventParams {
	var ()
	return &MockPlayStationStreamEventParams{

		timeout: timeout,
	}
}

// NewMockPlayStationStreamEventParamsWithContext creates a new MockPlayStationStreamEventParams object
// with the default values initialized, and the ability to set a context for a request
func NewMockPlayStationStreamEventParamsWithContext(ctx context.Context) *MockPlayStationStreamEventParams {
	var ()
	return &MockPlayStationStreamEventParams{

		Context: ctx,
	}
}

// NewMockPlayStationStreamEventParamsWithHTTPClient creates a new MockPlayStationStreamEventParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewMockPlayStationStreamEventParamsWithHTTPClient(client *http.Client) *MockPlayStationStreamEventParams {
	var ()
	return &MockPlayStationStreamEventParams{
		HTTPClient: client,
	}
}

/*MockPlayStationStreamEventParams contains all the parameters to send to the API endpoint
for the mock play station stream event operation typically these are written to a http.Request
*/
type MockPlayStationStreamEventParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.StreamEvent
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the mock play station stream event params
func (o *MockPlayStationStreamEventParams) WithTimeout(timeout time.Duration) *MockPlayStationStreamEventParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the mock play station stream event params
func (o *MockPlayStationStreamEventParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the mock play station stream event params
func (o *MockPlayStationStreamEventParams) WithContext(ctx context.Context) *MockPlayStationStreamEventParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the mock play station stream event params
func (o *MockPlayStationStreamEventParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the mock play station stream event params
func (o *MockPlayStationStreamEventParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the mock play station stream event params
func (o *MockPlayStationStreamEventParams) WithHTTPClient(client *http.Client) *MockPlayStationStreamEventParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the mock play station stream event params
func (o *MockPlayStationStreamEventParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the mock play station stream event params
func (o *MockPlayStationStreamEventParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *MockPlayStationStreamEventParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the mock play station stream event params
func (o *MockPlayStationStreamEventParams) WithBody(body *platformclientmodels.StreamEvent) *MockPlayStationStreamEventParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the mock play station stream event params
func (o *MockPlayStationStreamEventParams) SetBody(body *platformclientmodels.StreamEvent) {
	o.Body = body
}

// WithNamespace adds the namespace to the mock play station stream event params
func (o *MockPlayStationStreamEventParams) WithNamespace(namespace string) *MockPlayStationStreamEventParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the mock play station stream event params
func (o *MockPlayStationStreamEventParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *MockPlayStationStreamEventParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
