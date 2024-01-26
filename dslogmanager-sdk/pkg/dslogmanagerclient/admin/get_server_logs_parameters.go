// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

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

// NewGetServerLogsParams creates a new GetServerLogsParams object
// with the default values initialized.
func NewGetServerLogsParams() *GetServerLogsParams {
	var (
		logTypeDefault = string("all")
		offsetDefault  = int64(10000)
		originDefault  = string("end")
	)
	return &GetServerLogsParams{
		LogType: &logTypeDefault,
		Offset:  &offsetDefault,
		Origin:  &originDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetServerLogsParamsWithTimeout creates a new GetServerLogsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetServerLogsParamsWithTimeout(timeout time.Duration) *GetServerLogsParams {
	var (
		logTypeDefault = string("all")
		offsetDefault  = int64(10000)
		originDefault  = string("end")
	)
	return &GetServerLogsParams{
		LogType: &logTypeDefault,
		Offset:  &offsetDefault,
		Origin:  &originDefault,

		timeout: timeout,
	}
}

// NewGetServerLogsParamsWithContext creates a new GetServerLogsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetServerLogsParamsWithContext(ctx context.Context) *GetServerLogsParams {
	var (
		logTypeDefault = string("all")
		offsetDefault  = int64(10000)
		originDefault  = string("end")
	)
	return &GetServerLogsParams{
		LogType: &logTypeDefault,
		Offset:  &offsetDefault,
		Origin:  &originDefault,

		Context: ctx,
	}
}

// NewGetServerLogsParamsWithHTTPClient creates a new GetServerLogsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetServerLogsParamsWithHTTPClient(client *http.Client) *GetServerLogsParams {
	var (
		logTypeDefault = string("all")
		offsetDefault  = int64(10000)
		originDefault  = string("end")
	)
	return &GetServerLogsParams{
		LogType:    &logTypeDefault,
		Offset:     &offsetDefault,
		Origin:     &originDefault,
		HTTPClient: client,
	}
}

/*GetServerLogsParams contains all the parameters to send to the API endpoint
for the get server logs operation typically these are written to a http.Request
*/
type GetServerLogsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*PodName
	  name of the DS pod

	*/
	PodName string
	/*LogType
	  The log type requested. "stderr", "stdout" or "all". Default : "all"

	*/
	LogType *string
	/*Offset
	  The offset to start streaming log data at. Default : 10000

	*/
	Offset *int64
	/*Origin
	  Either "start" or "end" and defines from where the offset is applied. Default : "end"

	*/
	Origin *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get server logs params
func (o *GetServerLogsParams) WithTimeout(timeout time.Duration) *GetServerLogsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get server logs params
func (o *GetServerLogsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get server logs params
func (o *GetServerLogsParams) WithContext(ctx context.Context) *GetServerLogsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get server logs params
func (o *GetServerLogsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get server logs params
func (o *GetServerLogsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get server logs params
func (o *GetServerLogsParams) WithHTTPClient(client *http.Client) *GetServerLogsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get server logs params
func (o *GetServerLogsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get server logs params
func (o *GetServerLogsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetServerLogsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get server logs params
func (o *GetServerLogsParams) WithNamespace(namespace string) *GetServerLogsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get server logs params
func (o *GetServerLogsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPodName adds the podName to the get server logs params
func (o *GetServerLogsParams) WithPodName(podName string) *GetServerLogsParams {
	o.SetPodName(podName)
	return o
}

// SetPodName adds the podName to the get server logs params
func (o *GetServerLogsParams) SetPodName(podName string) {
	o.PodName = podName
}

// WithLogType adds the logType to the get server logs params
func (o *GetServerLogsParams) WithLogType(logType *string) *GetServerLogsParams {
	o.SetLogType(logType)
	return o
}

// SetLogType adds the logType to the get server logs params
func (o *GetServerLogsParams) SetLogType(logType *string) {
	o.LogType = logType
}

// WithOffset adds the offset to the get server logs params
func (o *GetServerLogsParams) WithOffset(offset *int64) *GetServerLogsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get server logs params
func (o *GetServerLogsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithOrigin adds the origin to the get server logs params
func (o *GetServerLogsParams) WithOrigin(origin *string) *GetServerLogsParams {
	o.SetOrigin(origin)
	return o
}

// SetOrigin adds the origin to the get server logs params
func (o *GetServerLogsParams) SetOrigin(origin *string) {
	o.Origin = origin
}

// WriteToRequest writes these params to a swagger request
func (o *GetServerLogsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.LogType != nil {

		// query param logType
		var qrLogType string
		if o.LogType != nil {
			qrLogType = *o.LogType
		}
		qLogType := qrLogType
		if qLogType != "" {
			if err := r.SetQueryParam("logType", qLogType); err != nil {
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

	if o.Origin != nil {

		// query param origin
		var qrOrigin string
		if o.Origin != nil {
			qrOrigin = *o.Origin
		}
		qOrigin := qrOrigin
		if qOrigin != "" {
			if err := r.SetQueryParam("origin", qOrigin); err != nil {
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
