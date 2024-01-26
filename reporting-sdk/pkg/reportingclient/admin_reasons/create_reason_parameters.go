// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_reasons

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
)

// NewCreateReasonParams creates a new CreateReasonParams object
// with the default values initialized.
func NewCreateReasonParams() *CreateReasonParams {
	var ()
	return &CreateReasonParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateReasonParamsWithTimeout creates a new CreateReasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateReasonParamsWithTimeout(timeout time.Duration) *CreateReasonParams {
	var ()
	return &CreateReasonParams{

		timeout: timeout,
	}
}

// NewCreateReasonParamsWithContext creates a new CreateReasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateReasonParamsWithContext(ctx context.Context) *CreateReasonParams {
	var ()
	return &CreateReasonParams{

		Context: ctx,
	}
}

// NewCreateReasonParamsWithHTTPClient creates a new CreateReasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateReasonParamsWithHTTPClient(client *http.Client) *CreateReasonParams {
	var ()
	return &CreateReasonParams{
		HTTPClient: client,
	}
}

/*CreateReasonParams contains all the parameters to send to the API endpoint
for the create reason operation typically these are written to a http.Request
*/
type CreateReasonParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *reportingclientmodels.RestapiCreateReasonRequest
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the create reason params
func (o *CreateReasonParams) WithTimeout(timeout time.Duration) *CreateReasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create reason params
func (o *CreateReasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create reason params
func (o *CreateReasonParams) WithContext(ctx context.Context) *CreateReasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create reason params
func (o *CreateReasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create reason params
func (o *CreateReasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create reason params
func (o *CreateReasonParams) WithHTTPClient(client *http.Client) *CreateReasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create reason params
func (o *CreateReasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create reason params
func (o *CreateReasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateReasonParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create reason params
func (o *CreateReasonParams) WithBody(body *reportingclientmodels.RestapiCreateReasonRequest) *CreateReasonParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create reason params
func (o *CreateReasonParams) SetBody(body *reportingclientmodels.RestapiCreateReasonRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the create reason params
func (o *CreateReasonParams) WithNamespace(namespace string) *CreateReasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create reason params
func (o *CreateReasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateReasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
