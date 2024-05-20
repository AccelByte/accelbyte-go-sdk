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
)

// NewQueryXrayMatchPoolParams creates a new QueryXrayMatchPoolParams object
// with the default values initialized.
func NewQueryXrayMatchPoolParams() *QueryXrayMatchPoolParams {
	var ()
	return &QueryXrayMatchPoolParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryXrayMatchPoolParamsWithTimeout creates a new QueryXrayMatchPoolParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryXrayMatchPoolParamsWithTimeout(timeout time.Duration) *QueryXrayMatchPoolParams {
	var ()
	return &QueryXrayMatchPoolParams{

		timeout: timeout,
	}
}

// NewQueryXrayMatchPoolParamsWithContext creates a new QueryXrayMatchPoolParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryXrayMatchPoolParamsWithContext(ctx context.Context) *QueryXrayMatchPoolParams {
	var ()
	return &QueryXrayMatchPoolParams{

		Context: ctx,
	}
}

// NewQueryXrayMatchPoolParamsWithHTTPClient creates a new QueryXrayMatchPoolParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryXrayMatchPoolParamsWithHTTPClient(client *http.Client) *QueryXrayMatchPoolParams {
	var ()
	return &QueryXrayMatchPoolParams{
		HTTPClient: client,
	}
}

/*QueryXrayMatchPoolParams contains all the parameters to send to the API endpoint
for the query xray match pool operation typically these are written to a http.Request
*/
type QueryXrayMatchPoolParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*PoolName
	  match pool name

	*/
	PoolName string
	/*EndDate
	  End date time: 2024-05-20T04:09:26Z

	*/
	EndDate string
	/*StartDate
	  Start date time. Format: 2024-05-20T04:09:26Z

	*/
	StartDate string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query xray match pool params
func (o *QueryXrayMatchPoolParams) WithTimeout(timeout time.Duration) *QueryXrayMatchPoolParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query xray match pool params
func (o *QueryXrayMatchPoolParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query xray match pool params
func (o *QueryXrayMatchPoolParams) WithContext(ctx context.Context) *QueryXrayMatchPoolParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query xray match pool params
func (o *QueryXrayMatchPoolParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query xray match pool params
func (o *QueryXrayMatchPoolParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query xray match pool params
func (o *QueryXrayMatchPoolParams) WithHTTPClient(client *http.Client) *QueryXrayMatchPoolParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query xray match pool params
func (o *QueryXrayMatchPoolParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query xray match pool params
func (o *QueryXrayMatchPoolParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryXrayMatchPoolParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query xray match pool params
func (o *QueryXrayMatchPoolParams) WithNamespace(namespace string) *QueryXrayMatchPoolParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query xray match pool params
func (o *QueryXrayMatchPoolParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPoolName adds the poolName to the query xray match pool params
func (o *QueryXrayMatchPoolParams) WithPoolName(poolName string) *QueryXrayMatchPoolParams {
	o.SetPoolName(poolName)
	return o
}

// SetPoolName adds the poolName to the query xray match pool params
func (o *QueryXrayMatchPoolParams) SetPoolName(poolName string) {
	o.PoolName = poolName
}

// WithEndDate adds the endDate to the query xray match pool params
func (o *QueryXrayMatchPoolParams) WithEndDate(endDate string) *QueryXrayMatchPoolParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the query xray match pool params
func (o *QueryXrayMatchPoolParams) SetEndDate(endDate string) {
	o.EndDate = endDate
}

// WithStartDate adds the startDate to the query xray match pool params
func (o *QueryXrayMatchPoolParams) WithStartDate(startDate string) *QueryXrayMatchPoolParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the query xray match pool params
func (o *QueryXrayMatchPoolParams) SetStartDate(startDate string) {
	o.StartDate = startDate
}

// WriteToRequest writes these params to a swagger request
func (o *QueryXrayMatchPoolParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param poolName
	if err := r.SetPathParam("poolName", o.PoolName); err != nil {
		return err
	}

	// query param endDate
	qrEndDate := o.EndDate
	qEndDate := qrEndDate
	if qEndDate != "" {
		if err := r.SetQueryParam("endDate", qEndDate); err != nil {
			return err
		}
	}

	// query param startDate
	qrStartDate := o.StartDate
	qStartDate := qrStartDate
	if qStartDate != "" {
		if err := r.SetQueryParam("startDate", qStartDate); err != nil {
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
