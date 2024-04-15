// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package development

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

// NewDevelopmentServerConfigurationListParams creates a new DevelopmentServerConfigurationListParams object
// with the default values initialized.
func NewDevelopmentServerConfigurationListParams() *DevelopmentServerConfigurationListParams {
	var (
		countDefault  = int64(100)
		offsetDefault = int64(0)
	)
	return &DevelopmentServerConfigurationListParams{
		Count:  &countDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewDevelopmentServerConfigurationListParamsWithTimeout creates a new DevelopmentServerConfigurationListParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDevelopmentServerConfigurationListParamsWithTimeout(timeout time.Duration) *DevelopmentServerConfigurationListParams {
	var (
		countDefault  = int64(100)
		offsetDefault = int64(0)
	)
	return &DevelopmentServerConfigurationListParams{
		Count:  &countDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewDevelopmentServerConfigurationListParamsWithContext creates a new DevelopmentServerConfigurationListParams object
// with the default values initialized, and the ability to set a context for a request
func NewDevelopmentServerConfigurationListParamsWithContext(ctx context.Context) *DevelopmentServerConfigurationListParams {
	var (
		countDefault  = int64(100)
		offsetDefault = int64(0)
	)
	return &DevelopmentServerConfigurationListParams{
		Count:  &countDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewDevelopmentServerConfigurationListParamsWithHTTPClient creates a new DevelopmentServerConfigurationListParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDevelopmentServerConfigurationListParamsWithHTTPClient(client *http.Client) *DevelopmentServerConfigurationListParams {
	var (
		countDefault  = int64(100)
		offsetDefault = int64(0)
	)
	return &DevelopmentServerConfigurationListParams{
		Count:      &countDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*DevelopmentServerConfigurationListParams contains all the parameters to send to the API endpoint
for the development server configuration list operation typically these are written to a http.Request
*/
type DevelopmentServerConfigurationListParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Count
	  defines the maximum number of records returned in one page.

	*/
	Count *int64
	/*Offset
	  specifies the start index for the records returned.

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the development server configuration list params
func (o *DevelopmentServerConfigurationListParams) WithTimeout(timeout time.Duration) *DevelopmentServerConfigurationListParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the development server configuration list params
func (o *DevelopmentServerConfigurationListParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the development server configuration list params
func (o *DevelopmentServerConfigurationListParams) WithContext(ctx context.Context) *DevelopmentServerConfigurationListParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the development server configuration list params
func (o *DevelopmentServerConfigurationListParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the development server configuration list params
func (o *DevelopmentServerConfigurationListParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the development server configuration list params
func (o *DevelopmentServerConfigurationListParams) WithHTTPClient(client *http.Client) *DevelopmentServerConfigurationListParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the development server configuration list params
func (o *DevelopmentServerConfigurationListParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the development server configuration list params
func (o *DevelopmentServerConfigurationListParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DevelopmentServerConfigurationListParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the development server configuration list params
func (o *DevelopmentServerConfigurationListParams) WithNamespace(namespace string) *DevelopmentServerConfigurationListParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the development server configuration list params
func (o *DevelopmentServerConfigurationListParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCount adds the count to the development server configuration list params
func (o *DevelopmentServerConfigurationListParams) WithCount(count *int64) *DevelopmentServerConfigurationListParams {
	o.SetCount(count)
	return o
}

// SetCount adds the count to the development server configuration list params
func (o *DevelopmentServerConfigurationListParams) SetCount(count *int64) {
	o.Count = count
}

// WithOffset adds the offset to the development server configuration list params
func (o *DevelopmentServerConfigurationListParams) WithOffset(offset *int64) *DevelopmentServerConfigurationListParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the development server configuration list params
func (o *DevelopmentServerConfigurationListParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *DevelopmentServerConfigurationListParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Count != nil {

		// query param count
		var qrCount int64
		if o.Count != nil {
			qrCount = *o.Count
		}
		qCount := swag.FormatInt64(qrCount)
		if qCount != "" {
			if err := r.SetQueryParam("count", qCount); err != nil {
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
