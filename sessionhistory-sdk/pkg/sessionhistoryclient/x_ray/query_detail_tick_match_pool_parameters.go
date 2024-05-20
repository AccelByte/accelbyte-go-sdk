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
	"github.com/go-openapi/swag"
)

// NewQueryDetailTickMatchPoolParams creates a new QueryDetailTickMatchPoolParams object
// with the default values initialized.
func NewQueryDetailTickMatchPoolParams() *QueryDetailTickMatchPoolParams {
	var (
		allDefault    = bool(false)
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &QueryDetailTickMatchPoolParams{
		All:    &allDefault,
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryDetailTickMatchPoolParamsWithTimeout creates a new QueryDetailTickMatchPoolParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryDetailTickMatchPoolParamsWithTimeout(timeout time.Duration) *QueryDetailTickMatchPoolParams {
	var (
		allDefault    = bool(false)
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &QueryDetailTickMatchPoolParams{
		All:    &allDefault,
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryDetailTickMatchPoolParamsWithContext creates a new QueryDetailTickMatchPoolParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryDetailTickMatchPoolParamsWithContext(ctx context.Context) *QueryDetailTickMatchPoolParams {
	var (
		allDefault    = bool(false)
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &QueryDetailTickMatchPoolParams{
		All:    &allDefault,
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryDetailTickMatchPoolParamsWithHTTPClient creates a new QueryDetailTickMatchPoolParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryDetailTickMatchPoolParamsWithHTTPClient(client *http.Client) *QueryDetailTickMatchPoolParams {
	var (
		allDefault    = bool(false)
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &QueryDetailTickMatchPoolParams{
		All:        &allDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryDetailTickMatchPoolParams contains all the parameters to send to the API endpoint
for the query detail tick match pool operation typically these are written to a http.Request
*/
type QueryDetailTickMatchPoolParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*PodName
	  pod name

	*/
	PodName string
	/*PoolName
	  match pool name

	*/
	PoolName string
	/*All
	  Set value to 'true' to get all record, included with 0 value

	*/
	All *bool
	/*Limit
	  Pagination limit

	*/
	Limit *int64
	/*Offset
	  Pagination offset

	*/
	Offset *int64
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

// WithTimeout adds the timeout to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) WithTimeout(timeout time.Duration) *QueryDetailTickMatchPoolParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) WithContext(ctx context.Context) *QueryDetailTickMatchPoolParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) WithHTTPClient(client *http.Client) *QueryDetailTickMatchPoolParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryDetailTickMatchPoolParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) WithNamespace(namespace string) *QueryDetailTickMatchPoolParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPodName adds the podName to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) WithPodName(podName string) *QueryDetailTickMatchPoolParams {
	o.SetPodName(podName)
	return o
}

// SetPodName adds the podName to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) SetPodName(podName string) {
	o.PodName = podName
}

// WithPoolName adds the poolName to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) WithPoolName(poolName string) *QueryDetailTickMatchPoolParams {
	o.SetPoolName(poolName)
	return o
}

// SetPoolName adds the poolName to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) SetPoolName(poolName string) {
	o.PoolName = poolName
}

// WithAll adds the all to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) WithAll(all *bool) *QueryDetailTickMatchPoolParams {
	o.SetAll(all)
	return o
}

// SetAll adds the all to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) SetAll(all *bool) {
	o.All = all
}

// WithLimit adds the limit to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) WithLimit(limit *int64) *QueryDetailTickMatchPoolParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) WithOffset(offset *int64) *QueryDetailTickMatchPoolParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithEndDate adds the endDate to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) WithEndDate(endDate string) *QueryDetailTickMatchPoolParams {
	o.SetEndDate(endDate)
	return o
}

// SetEndDate adds the endDate to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) SetEndDate(endDate string) {
	o.EndDate = endDate
}

// WithStartDate adds the startDate to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) WithStartDate(startDate string) *QueryDetailTickMatchPoolParams {
	o.SetStartDate(startDate)
	return o
}

// SetStartDate adds the startDate to the query detail tick match pool params
func (o *QueryDetailTickMatchPoolParams) SetStartDate(startDate string) {
	o.StartDate = startDate
}

// WriteToRequest writes these params to a swagger request
func (o *QueryDetailTickMatchPoolParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param podName
	if err := r.SetPathParam("podName", o.PodName); err != nil {
		return err
	}

	// path param poolName
	if err := r.SetPathParam("poolName", o.PoolName); err != nil {
		return err
	}

	if o.All != nil {

		// query param all
		var qrAll bool
		if o.All != nil {
			qrAll = *o.All
		}
		qAll := swag.FormatBool(qrAll)
		if qAll != "" {
			if err := r.SetQueryParam("all", qAll); err != nil {
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
