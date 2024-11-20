// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval_s2_s

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

// NewS2SGetDataRequestByRequestIDParams creates a new S2SGetDataRequestByRequestIDParams object
// with the default values initialized.
func NewS2SGetDataRequestByRequestIDParams() *S2SGetDataRequestByRequestIDParams {
	var ()
	return &S2SGetDataRequestByRequestIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewS2SGetDataRequestByRequestIDParamsWithTimeout creates a new S2SGetDataRequestByRequestIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewS2SGetDataRequestByRequestIDParamsWithTimeout(timeout time.Duration) *S2SGetDataRequestByRequestIDParams {
	var ()
	return &S2SGetDataRequestByRequestIDParams{

		timeout: timeout,
	}
}

// NewS2SGetDataRequestByRequestIDParamsWithContext creates a new S2SGetDataRequestByRequestIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewS2SGetDataRequestByRequestIDParamsWithContext(ctx context.Context) *S2SGetDataRequestByRequestIDParams {
	var ()
	return &S2SGetDataRequestByRequestIDParams{

		Context: ctx,
	}
}

// NewS2SGetDataRequestByRequestIDParamsWithHTTPClient creates a new S2SGetDataRequestByRequestIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewS2SGetDataRequestByRequestIDParamsWithHTTPClient(client *http.Client) *S2SGetDataRequestByRequestIDParams {
	var ()
	return &S2SGetDataRequestByRequestIDParams{
		HTTPClient: client,
	}
}

/*S2SGetDataRequestByRequestIDParams contains all the parameters to send to the API endpoint
for the s2s get data request by request id operation typically these are written to a http.Request
*/
type S2SGetDataRequestByRequestIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Publisher Namespace

	*/
	Namespace string
	/*RequestID
	  Request Id

	*/
	RequestID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the s2s get data request by request id params
func (o *S2SGetDataRequestByRequestIDParams) WithTimeout(timeout time.Duration) *S2SGetDataRequestByRequestIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the s2s get data request by request id params
func (o *S2SGetDataRequestByRequestIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the s2s get data request by request id params
func (o *S2SGetDataRequestByRequestIDParams) WithContext(ctx context.Context) *S2SGetDataRequestByRequestIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the s2s get data request by request id params
func (o *S2SGetDataRequestByRequestIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the s2s get data request by request id params
func (o *S2SGetDataRequestByRequestIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the s2s get data request by request id params
func (o *S2SGetDataRequestByRequestIDParams) WithHTTPClient(client *http.Client) *S2SGetDataRequestByRequestIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the s2s get data request by request id params
func (o *S2SGetDataRequestByRequestIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the s2s get data request by request id params
func (o *S2SGetDataRequestByRequestIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *S2SGetDataRequestByRequestIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the s2s get data request by request id params
func (o *S2SGetDataRequestByRequestIDParams) WithNamespace(namespace string) *S2SGetDataRequestByRequestIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the s2s get data request by request id params
func (o *S2SGetDataRequestByRequestIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRequestID adds the requestID to the s2s get data request by request id params
func (o *S2SGetDataRequestByRequestIDParams) WithRequestID(requestID string) *S2SGetDataRequestByRequestIDParams {
	o.SetRequestID(requestID)
	return o
}

// SetRequestID adds the requestId to the s2s get data request by request id params
func (o *S2SGetDataRequestByRequestIDParams) SetRequestID(requestID string) {
	o.RequestID = requestID
}

// WriteToRequest writes these params to a swagger request
func (o *S2SGetDataRequestByRequestIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param requestId
	if err := r.SetPathParam("requestId", o.RequestID); err != nil {
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
