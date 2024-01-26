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

// NewListSessionParams creates a new ListSessionParams object
// with the default values initialized.
func NewListSessionParams() *ListSessionParams {
	var ()
	return &ListSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListSessionParamsWithTimeout creates a new ListSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListSessionParamsWithTimeout(timeout time.Duration) *ListSessionParams {
	var ()
	return &ListSessionParams{

		timeout: timeout,
	}
}

// NewListSessionParamsWithContext creates a new ListSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewListSessionParamsWithContext(ctx context.Context) *ListSessionParams {
	var ()
	return &ListSessionParams{

		Context: ctx,
	}
}

// NewListSessionParamsWithHTTPClient creates a new ListSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListSessionParamsWithHTTPClient(client *http.Client) *ListSessionParams {
	var ()
	return &ListSessionParams{
		HTTPClient: client,
	}
}

/*ListSessionParams contains all the parameters to send to the API endpoint
for the list session operation typically these are written to a http.Request
*/
type ListSessionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Region
	  region where session is located. if not specified it will list all sessions.

	*/
	Region *string
	/*WithServer
	  append server info to session or not

	*/
	WithServer *bool
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

// WithTimeout adds the timeout to the list session params
func (o *ListSessionParams) WithTimeout(timeout time.Duration) *ListSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list session params
func (o *ListSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list session params
func (o *ListSessionParams) WithContext(ctx context.Context) *ListSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list session params
func (o *ListSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list session params
func (o *ListSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list session params
func (o *ListSessionParams) WithHTTPClient(client *http.Client) *ListSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list session params
func (o *ListSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list session params
func (o *ListSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListSessionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list session params
func (o *ListSessionParams) WithNamespace(namespace string) *ListSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list session params
func (o *ListSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRegion adds the region to the list session params
func (o *ListSessionParams) WithRegion(region *string) *ListSessionParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the list session params
func (o *ListSessionParams) SetRegion(region *string) {
	o.Region = region
}

// WithWithServer adds the withServer to the list session params
func (o *ListSessionParams) WithWithServer(withServer *bool) *ListSessionParams {
	o.SetWithServer(withServer)
	return o
}

// SetWithServer adds the withServer to the list session params
func (o *ListSessionParams) SetWithServer(withServer *bool) {
	o.WithServer = withServer
}

// WithCount adds the count to the list session params
func (o *ListSessionParams) WithCount(count int64) *ListSessionParams {
	o.SetCount(count)
	return o
}

// SetCount adds the count to the list session params
func (o *ListSessionParams) SetCount(count int64) {
	o.Count = count
}

// WithOffset adds the offset to the list session params
func (o *ListSessionParams) WithOffset(offset int64) *ListSessionParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the list session params
func (o *ListSessionParams) SetOffset(offset int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *ListSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Region != nil {

		// query param region
		var qrRegion string
		if o.Region != nil {
			qrRegion = *o.Region
		}
		qRegion := qrRegion
		if qRegion != "" {
			if err := r.SetQueryParam("region", qRegion); err != nil {
				return err
			}
		}

	}

	if o.WithServer != nil {

		// query param withServer
		var qrWithServer bool
		if o.WithServer != nil {
			qrWithServer = *o.WithServer
		}
		qWithServer := swag.FormatBool(qrWithServer)
		if qWithServer != "" {
			if err := r.SetQueryParam("withServer", qWithServer); err != nil {
				return err
			}
		}

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
