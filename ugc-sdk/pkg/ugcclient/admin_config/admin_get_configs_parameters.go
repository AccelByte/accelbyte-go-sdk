// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_config

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

// NewAdminGetConfigsParams creates a new AdminGetConfigsParams object
// with the default values initialized.
func NewAdminGetConfigsParams() *AdminGetConfigsParams {
	var ()
	return &AdminGetConfigsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetConfigsParamsWithTimeout creates a new AdminGetConfigsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetConfigsParamsWithTimeout(timeout time.Duration) *AdminGetConfigsParams {
	var ()
	return &AdminGetConfigsParams{

		timeout: timeout,
	}
}

// NewAdminGetConfigsParamsWithContext creates a new AdminGetConfigsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetConfigsParamsWithContext(ctx context.Context) *AdminGetConfigsParams {
	var ()
	return &AdminGetConfigsParams{

		Context: ctx,
	}
}

// NewAdminGetConfigsParamsWithHTTPClient creates a new AdminGetConfigsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetConfigsParamsWithHTTPClient(client *http.Client) *AdminGetConfigsParams {
	var ()
	return &AdminGetConfigsParams{
		HTTPClient: client,
	}
}

/*AdminGetConfigsParams contains all the parameters to send to the API endpoint
for the admin get configs operation typically these are written to a http.Request
*/
type AdminGetConfigsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  number of configs per page

	*/
	Limit *int64
	/*Offset
	  offset number to retrieve

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get configs params
func (o *AdminGetConfigsParams) WithTimeout(timeout time.Duration) *AdminGetConfigsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get configs params
func (o *AdminGetConfigsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get configs params
func (o *AdminGetConfigsParams) WithContext(ctx context.Context) *AdminGetConfigsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get configs params
func (o *AdminGetConfigsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get configs params
func (o *AdminGetConfigsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get configs params
func (o *AdminGetConfigsParams) WithHTTPClient(client *http.Client) *AdminGetConfigsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get configs params
func (o *AdminGetConfigsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get configs params
func (o *AdminGetConfigsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetConfigsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get configs params
func (o *AdminGetConfigsParams) WithNamespace(namespace string) *AdminGetConfigsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get configs params
func (o *AdminGetConfigsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin get configs params
func (o *AdminGetConfigsParams) WithLimit(limit *int64) *AdminGetConfigsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get configs params
func (o *AdminGetConfigsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get configs params
func (o *AdminGetConfigsParams) WithOffset(offset *int64) *AdminGetConfigsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get configs params
func (o *AdminGetConfigsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetConfigsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
