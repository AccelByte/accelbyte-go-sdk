// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package devices_v4

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

// NewAdminGenerateReportV4Params creates a new AdminGenerateReportV4Params object
// with the default values initialized.
func NewAdminGenerateReportV4Params() *AdminGenerateReportV4Params {
	var ()
	return &AdminGenerateReportV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGenerateReportV4ParamsWithTimeout creates a new AdminGenerateReportV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGenerateReportV4ParamsWithTimeout(timeout time.Duration) *AdminGenerateReportV4Params {
	var ()
	return &AdminGenerateReportV4Params{

		timeout: timeout,
	}
}

// NewAdminGenerateReportV4ParamsWithContext creates a new AdminGenerateReportV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGenerateReportV4ParamsWithContext(ctx context.Context) *AdminGenerateReportV4Params {
	var ()
	return &AdminGenerateReportV4Params{

		Context: ctx,
	}
}

// NewAdminGenerateReportV4ParamsWithHTTPClient creates a new AdminGenerateReportV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGenerateReportV4ParamsWithHTTPClient(client *http.Client) *AdminGenerateReportV4Params {
	var ()
	return &AdminGenerateReportV4Params{
		HTTPClient: client,
	}
}

/*AdminGenerateReportV4Params contains all the parameters to send to the API endpoint
for the admin generate report v4 operation typically these are written to a http.Request
*/
type AdminGenerateReportV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*EndDate
	  end date

	*/
	EndDate *string
	/*StartDate
	  start date

	*/
	StartDate *string
	/*DeviceType
	  device type

	*/
	DeviceType string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin generate report v4 params
func (o *AdminGenerateReportV4Params) WithTimeout(timeout time.Duration) *AdminGenerateReportV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin generate report v4 params
func (o *AdminGenerateReportV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin generate report v4 params
func (o *AdminGenerateReportV4Params) WithContext(ctx context.Context) *AdminGenerateReportV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin generate report v4 params
func (o *AdminGenerateReportV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin generate report v4 params
func (o *AdminGenerateReportV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin generate report v4 params
func (o *AdminGenerateReportV4Params) WithHTTPClient(client *http.Client) *AdminGenerateReportV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin generate report v4 params
func (o *AdminGenerateReportV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin generate report v4 params
func (o *AdminGenerateReportV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGenerateReportV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin generate report v4 params
func (o *AdminGenerateReportV4Params) WithNamespace(namespace string) *AdminGenerateReportV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin generate report v4 params
func (o *AdminGenerateReportV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEndDate adds the endDate to the admin generate report v4 params
func (o *AdminGenerateReportV4Params) WithEndDate(endDate *string) *AdminGenerateReportV4Params {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the admin generate report v4 params
func (o *AdminGenerateReportV4Params) SetEndDate(endDate *string) {
	o.EndDate = endDate
}

// WithStartDate adds the startDate to the admin generate report v4 params
func (o *AdminGenerateReportV4Params) WithStartDate(startDate *string) *AdminGenerateReportV4Params {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the admin generate report v4 params
func (o *AdminGenerateReportV4Params) SetStartDate(startDate *string) {
	o.StartDate = startDate
}

// WithDeviceType adds the deviceType to the admin generate report v4 params
func (o *AdminGenerateReportV4Params) WithDeviceType(deviceType string) *AdminGenerateReportV4Params {
	o.SetDeviceType(deviceType)
	return o
}

// SetDeviceType adds the deviceType to the admin generate report v4 params
func (o *AdminGenerateReportV4Params) SetDeviceType(deviceType string) {
	o.DeviceType = deviceType
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGenerateReportV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.EndDate != nil {

		// query param endDate
		var qrEndDate string
		if o.EndDate != nil {
			qrEndDate = *o.EndDate
		}
		qEndDate := qrEndDate
		if qEndDate != "" {
			if err := r.SetQueryParam("endDate", qEndDate); err != nil {
				return err
			}
		}

	}

	if o.StartDate != nil {

		// query param startDate
		var qrStartDate string
		if o.StartDate != nil {
			qrStartDate = *o.StartDate
		}
		qStartDate := qrStartDate
		if qStartDate != "" {
			if err := r.SetQueryParam("startDate", qStartDate); err != nil {
				return err
			}
		}

	}

	// query param deviceType
	qrDeviceType := o.DeviceType
	qDeviceType := qrDeviceType
	if qDeviceType != "" {
		if err := r.SetQueryParam("deviceType", qDeviceType); err != nil {
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
