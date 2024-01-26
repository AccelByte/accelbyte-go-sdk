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
	"github.com/go-openapi/swag"
)

// NewAdminGetBannedDevicesV4Params creates a new AdminGetBannedDevicesV4Params object
// with the default values initialized.
func NewAdminGetBannedDevicesV4Params() *AdminGetBannedDevicesV4Params {
	var ()
	return &AdminGetBannedDevicesV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetBannedDevicesV4ParamsWithTimeout creates a new AdminGetBannedDevicesV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetBannedDevicesV4ParamsWithTimeout(timeout time.Duration) *AdminGetBannedDevicesV4Params {
	var ()
	return &AdminGetBannedDevicesV4Params{

		timeout: timeout,
	}
}

// NewAdminGetBannedDevicesV4ParamsWithContext creates a new AdminGetBannedDevicesV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetBannedDevicesV4ParamsWithContext(ctx context.Context) *AdminGetBannedDevicesV4Params {
	var ()
	return &AdminGetBannedDevicesV4Params{

		Context: ctx,
	}
}

// NewAdminGetBannedDevicesV4ParamsWithHTTPClient creates a new AdminGetBannedDevicesV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetBannedDevicesV4ParamsWithHTTPClient(client *http.Client) *AdminGetBannedDevicesV4Params {
	var ()
	return &AdminGetBannedDevicesV4Params{
		HTTPClient: client,
	}
}

/*AdminGetBannedDevicesV4Params contains all the parameters to send to the API endpoint
for the admin get banned devices v4 operation typically these are written to a http.Request
*/
type AdminGetBannedDevicesV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*DeviceType
	  device type

	*/
	DeviceType *string
	/*EndDate
	  end date

	*/
	EndDate *string
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64
	/*Offset
	  the count to skip

	*/
	Offset *int64
	/*StartDate
	  start date

	*/
	StartDate *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) WithTimeout(timeout time.Duration) *AdminGetBannedDevicesV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) WithContext(ctx context.Context) *AdminGetBannedDevicesV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) WithHTTPClient(client *http.Client) *AdminGetBannedDevicesV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetBannedDevicesV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) WithNamespace(namespace string) *AdminGetBannedDevicesV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithDeviceType adds the deviceType to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) WithDeviceType(deviceType *string) *AdminGetBannedDevicesV4Params {
	o.SetDeviceType(deviceType)
	return o
}

// SetDeviceType adds the deviceType to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) SetDeviceType(deviceType *string) {
	o.DeviceType = deviceType
}

// WithEndDate adds the endDate to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) WithEndDate(endDate *string) *AdminGetBannedDevicesV4Params {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) SetEndDate(endDate *string) {
	o.EndDate = endDate
}

// WithLimit adds the limit to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) WithLimit(limit *int64) *AdminGetBannedDevicesV4Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) WithOffset(offset *int64) *AdminGetBannedDevicesV4Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithStartDate adds the startDate to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) WithStartDate(startDate *string) *AdminGetBannedDevicesV4Params {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the admin get banned devices v4 params
func (o *AdminGetBannedDevicesV4Params) SetStartDate(startDate *string) {
	o.StartDate = startDate
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetBannedDevicesV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.DeviceType != nil {

		// query param deviceType
		var qrDeviceType string
		if o.DeviceType != nil {
			qrDeviceType = *o.DeviceType
		}
		qDeviceType := qrDeviceType
		if qDeviceType != "" {
			if err := r.SetQueryParam("deviceType", qDeviceType); err != nil {
				return err
			}
		}

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

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
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
