// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package pod_config

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

// NewGetAllPodConfigClientParams creates a new GetAllPodConfigClientParams object
// with the default values initialized.
func NewGetAllPodConfigClientParams() *GetAllPodConfigClientParams {
	var ()
	return &GetAllPodConfigClientParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAllPodConfigClientParamsWithTimeout creates a new GetAllPodConfigClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAllPodConfigClientParamsWithTimeout(timeout time.Duration) *GetAllPodConfigClientParams {
	var ()
	return &GetAllPodConfigClientParams{

		timeout: timeout,
	}
}

// NewGetAllPodConfigClientParamsWithContext creates a new GetAllPodConfigClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetAllPodConfigClientParamsWithContext(ctx context.Context) *GetAllPodConfigClientParams {
	var ()
	return &GetAllPodConfigClientParams{

		Context: ctx,
	}
}

// NewGetAllPodConfigClientParamsWithHTTPClient creates a new GetAllPodConfigClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAllPodConfigClientParamsWithHTTPClient(client *http.Client) *GetAllPodConfigClientParams {
	var ()
	return &GetAllPodConfigClientParams{
		HTTPClient: client,
	}
}

/*GetAllPodConfigClientParams contains all the parameters to send to the API endpoint
for the get all pod config client operation typically these are written to a http.Request
*/
type GetAllPodConfigClientParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Count
	  how many items to return

	*/
	Count int64
	/*Offset
	  offset from list to query from

	*/
	Offset int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get all pod config client params
func (o *GetAllPodConfigClientParams) WithTimeout(timeout time.Duration) *GetAllPodConfigClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get all pod config client params
func (o *GetAllPodConfigClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get all pod config client params
func (o *GetAllPodConfigClientParams) WithContext(ctx context.Context) *GetAllPodConfigClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get all pod config client params
func (o *GetAllPodConfigClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get all pod config client params
func (o *GetAllPodConfigClientParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get all pod config client params
func (o *GetAllPodConfigClientParams) WithHTTPClient(client *http.Client) *GetAllPodConfigClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get all pod config client params
func (o *GetAllPodConfigClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get all pod config client params
func (o *GetAllPodConfigClientParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetAllPodConfigClientParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get all pod config client params
func (o *GetAllPodConfigClientParams) WithNamespace(namespace string) *GetAllPodConfigClientParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get all pod config client params
func (o *GetAllPodConfigClientParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCount adds the count to the get all pod config client params
func (o *GetAllPodConfigClientParams) WithCount(count int64) *GetAllPodConfigClientParams {
	o.SetCount(count)
	return o
}

// SetCount adds the count to the get all pod config client params
func (o *GetAllPodConfigClientParams) SetCount(count int64) {
	o.Count = count
}

// WithOffset adds the offset to the get all pod config client params
func (o *GetAllPodConfigClientParams) WithOffset(offset int64) *GetAllPodConfigClientParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get all pod config client params
func (o *GetAllPodConfigClientParams) SetOffset(offset int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetAllPodConfigClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param count
	qrCount := o.Count
	qCount := swag.FormatInt64(qrCount)
	if qCount != "" {
		if err := r.SetQueryParam("count", qCount); err != nil {
			return err
		}
	}

	// query param offset
	qrOffset := o.Offset
	qOffset := swag.FormatInt64(qrOffset)
	if qOffset != "" {
		if err := r.SetQueryParam("offset", qOffset); err != nil {
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
