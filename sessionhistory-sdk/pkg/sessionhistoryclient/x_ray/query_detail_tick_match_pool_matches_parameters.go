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

// NewQueryDetailTickMatchPoolMatchesParams creates a new QueryDetailTickMatchPoolMatchesParams object
// with the default values initialized.
func NewQueryDetailTickMatchPoolMatchesParams() *QueryDetailTickMatchPoolMatchesParams {
	var ()
	return &QueryDetailTickMatchPoolMatchesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryDetailTickMatchPoolMatchesParamsWithTimeout creates a new QueryDetailTickMatchPoolMatchesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryDetailTickMatchPoolMatchesParamsWithTimeout(timeout time.Duration) *QueryDetailTickMatchPoolMatchesParams {
	var ()
	return &QueryDetailTickMatchPoolMatchesParams{

		timeout: timeout,
	}
}

// NewQueryDetailTickMatchPoolMatchesParamsWithContext creates a new QueryDetailTickMatchPoolMatchesParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryDetailTickMatchPoolMatchesParamsWithContext(ctx context.Context) *QueryDetailTickMatchPoolMatchesParams {
	var ()
	return &QueryDetailTickMatchPoolMatchesParams{

		Context: ctx,
	}
}

// NewQueryDetailTickMatchPoolMatchesParamsWithHTTPClient creates a new QueryDetailTickMatchPoolMatchesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryDetailTickMatchPoolMatchesParamsWithHTTPClient(client *http.Client) *QueryDetailTickMatchPoolMatchesParams {
	var ()
	return &QueryDetailTickMatchPoolMatchesParams{
		HTTPClient: client,
	}
}

/*QueryDetailTickMatchPoolMatchesParams contains all the parameters to send to the API endpoint
for the query detail tick match pool matches operation typically these are written to a http.Request
*/
type QueryDetailTickMatchPoolMatchesParams struct {

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
	/*TickID
	  tick id

	*/
	TickID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query detail tick match pool matches params
func (o *QueryDetailTickMatchPoolMatchesParams) WithTimeout(timeout time.Duration) *QueryDetailTickMatchPoolMatchesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query detail tick match pool matches params
func (o *QueryDetailTickMatchPoolMatchesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query detail tick match pool matches params
func (o *QueryDetailTickMatchPoolMatchesParams) WithContext(ctx context.Context) *QueryDetailTickMatchPoolMatchesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query detail tick match pool matches params
func (o *QueryDetailTickMatchPoolMatchesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query detail tick match pool matches params
func (o *QueryDetailTickMatchPoolMatchesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query detail tick match pool matches params
func (o *QueryDetailTickMatchPoolMatchesParams) WithHTTPClient(client *http.Client) *QueryDetailTickMatchPoolMatchesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query detail tick match pool matches params
func (o *QueryDetailTickMatchPoolMatchesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query detail tick match pool matches params
func (o *QueryDetailTickMatchPoolMatchesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryDetailTickMatchPoolMatchesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query detail tick match pool matches params
func (o *QueryDetailTickMatchPoolMatchesParams) WithNamespace(namespace string) *QueryDetailTickMatchPoolMatchesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query detail tick match pool matches params
func (o *QueryDetailTickMatchPoolMatchesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPodName adds the podName to the query detail tick match pool matches params
func (o *QueryDetailTickMatchPoolMatchesParams) WithPodName(podName string) *QueryDetailTickMatchPoolMatchesParams {
	o.SetPodName(podName)
	return o
}

// SetPodName adds the podName to the query detail tick match pool matches params
func (o *QueryDetailTickMatchPoolMatchesParams) SetPodName(podName string) {
	o.PodName = podName
}

// WithPoolName adds the poolName to the query detail tick match pool matches params
func (o *QueryDetailTickMatchPoolMatchesParams) WithPoolName(poolName string) *QueryDetailTickMatchPoolMatchesParams {
	o.SetPoolName(poolName)
	return o
}

// SetPoolName adds the poolName to the query detail tick match pool matches params
func (o *QueryDetailTickMatchPoolMatchesParams) SetPoolName(poolName string) {
	o.PoolName = poolName
}

// WithTickID adds the tickID to the query detail tick match pool matches params
func (o *QueryDetailTickMatchPoolMatchesParams) WithTickID(tickID string) *QueryDetailTickMatchPoolMatchesParams {
	o.SetTickID(tickID)
	return o
}

// SetTickID adds the tickId to the query detail tick match pool matches params
func (o *QueryDetailTickMatchPoolMatchesParams) SetTickID(tickID string) {
	o.TickID = tickID
}

// WriteToRequest writes these params to a swagger request
func (o *QueryDetailTickMatchPoolMatchesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param tickId
	if err := r.SetPathParam("tickId", o.TickID); err != nil {
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
