// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_reports

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

// NewAdminSubmitReportParams creates a new AdminSubmitReportParams object
// with the default values initialized.
func NewAdminSubmitReportParams() *AdminSubmitReportParams {
	var ()
	return &AdminSubmitReportParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminSubmitReportParamsWithTimeout creates a new AdminSubmitReportParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminSubmitReportParamsWithTimeout(timeout time.Duration) *AdminSubmitReportParams {
	var ()
	return &AdminSubmitReportParams{

		timeout: timeout,
	}
}

// NewAdminSubmitReportParamsWithContext creates a new AdminSubmitReportParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminSubmitReportParamsWithContext(ctx context.Context) *AdminSubmitReportParams {
	var ()
	return &AdminSubmitReportParams{

		Context: ctx,
	}
}

// NewAdminSubmitReportParamsWithHTTPClient creates a new AdminSubmitReportParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminSubmitReportParamsWithHTTPClient(client *http.Client) *AdminSubmitReportParams {
	var ()
	return &AdminSubmitReportParams{
		HTTPClient: client,
	}
}

/*AdminSubmitReportParams contains all the parameters to send to the API endpoint
for the admin submit report operation typically these are written to a http.Request
*/
type AdminSubmitReportParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *reportingclientmodels.RestapiSubmitReportRequest
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin submit report params
func (o *AdminSubmitReportParams) WithTimeout(timeout time.Duration) *AdminSubmitReportParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin submit report params
func (o *AdminSubmitReportParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin submit report params
func (o *AdminSubmitReportParams) WithContext(ctx context.Context) *AdminSubmitReportParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin submit report params
func (o *AdminSubmitReportParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin submit report params
func (o *AdminSubmitReportParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin submit report params
func (o *AdminSubmitReportParams) WithHTTPClient(client *http.Client) *AdminSubmitReportParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin submit report params
func (o *AdminSubmitReportParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin submit report params
func (o *AdminSubmitReportParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminSubmitReportParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin submit report params
func (o *AdminSubmitReportParams) WithBody(body *reportingclientmodels.RestapiSubmitReportRequest) *AdminSubmitReportParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin submit report params
func (o *AdminSubmitReportParams) SetBody(body *reportingclientmodels.RestapiSubmitReportRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin submit report params
func (o *AdminSubmitReportParams) WithNamespace(namespace string) *AdminSubmitReportParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin submit report params
func (o *AdminSubmitReportParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminSubmitReportParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
