// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval

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

// NewAdminGetListPersonalDataRequestParams creates a new AdminGetListPersonalDataRequestParams object
// with the default values initialized.
func NewAdminGetListPersonalDataRequestParams() *AdminGetListPersonalDataRequestParams {
	var ()
	return &AdminGetListPersonalDataRequestParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetListPersonalDataRequestParamsWithTimeout creates a new AdminGetListPersonalDataRequestParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetListPersonalDataRequestParamsWithTimeout(timeout time.Duration) *AdminGetListPersonalDataRequestParams {
	var ()
	return &AdminGetListPersonalDataRequestParams{

		timeout: timeout,
	}
}

// NewAdminGetListPersonalDataRequestParamsWithContext creates a new AdminGetListPersonalDataRequestParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetListPersonalDataRequestParamsWithContext(ctx context.Context) *AdminGetListPersonalDataRequestParams {
	var ()
	return &AdminGetListPersonalDataRequestParams{

		Context: ctx,
	}
}

// NewAdminGetListPersonalDataRequestParamsWithHTTPClient creates a new AdminGetListPersonalDataRequestParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetListPersonalDataRequestParamsWithHTTPClient(client *http.Client) *AdminGetListPersonalDataRequestParams {
	var ()
	return &AdminGetListPersonalDataRequestParams{
		HTTPClient: client,
	}
}

/*AdminGetListPersonalDataRequestParams contains all the parameters to send to the API endpoint
for the admin get list personal data request operation typically these are written to a http.Request
*/
type AdminGetListPersonalDataRequestParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64
	/*Offset
	  The start position that points to query data

	*/
	Offset *int64
	/*RequestDate
	  request date with format YYYY-MM-DD. Default value today UTC

	*/
	RequestDate *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get list personal data request params
func (o *AdminGetListPersonalDataRequestParams) WithTimeout(timeout time.Duration) *AdminGetListPersonalDataRequestParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get list personal data request params
func (o *AdminGetListPersonalDataRequestParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get list personal data request params
func (o *AdminGetListPersonalDataRequestParams) WithContext(ctx context.Context) *AdminGetListPersonalDataRequestParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get list personal data request params
func (o *AdminGetListPersonalDataRequestParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get list personal data request params
func (o *AdminGetListPersonalDataRequestParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get list personal data request params
func (o *AdminGetListPersonalDataRequestParams) WithHTTPClient(client *http.Client) *AdminGetListPersonalDataRequestParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get list personal data request params
func (o *AdminGetListPersonalDataRequestParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get list personal data request params
func (o *AdminGetListPersonalDataRequestParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetListPersonalDataRequestParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get list personal data request params
func (o *AdminGetListPersonalDataRequestParams) WithNamespace(namespace string) *AdminGetListPersonalDataRequestParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get list personal data request params
func (o *AdminGetListPersonalDataRequestParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin get list personal data request params
func (o *AdminGetListPersonalDataRequestParams) WithLimit(limit *int64) *AdminGetListPersonalDataRequestParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get list personal data request params
func (o *AdminGetListPersonalDataRequestParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get list personal data request params
func (o *AdminGetListPersonalDataRequestParams) WithOffset(offset *int64) *AdminGetListPersonalDataRequestParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get list personal data request params
func (o *AdminGetListPersonalDataRequestParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithRequestDate adds the requestDate to the admin get list personal data request params
func (o *AdminGetListPersonalDataRequestParams) WithRequestDate(requestDate *string) *AdminGetListPersonalDataRequestParams {
	o.SetRequestDate(requestDate)
	return o
}

// SetRequestDate adds the requestDate to the admin get list personal data request params
func (o *AdminGetListPersonalDataRequestParams) SetRequestDate(requestDate *string) {
	o.RequestDate = requestDate
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetListPersonalDataRequestParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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

	if o.RequestDate != nil {

		// query param requestDate
		var qrRequestDate string
		if o.RequestDate != nil {
			qrRequestDate = *o.RequestDate
		}
		qRequestDate := qrRequestDate
		if qRequestDate != "" {
			if err := r.SetQueryParam("requestDate", qRequestDate); err != nil {
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
