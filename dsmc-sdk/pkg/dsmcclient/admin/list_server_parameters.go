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

// NewListServerParams creates a new ListServerParams object
// with the default values initialized.
func NewListServerParams() *ListServerParams {
	var ()
	return &ListServerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListServerParamsWithTimeout creates a new ListServerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListServerParamsWithTimeout(timeout time.Duration) *ListServerParams {
	var ()
	return &ListServerParams{

		timeout: timeout,
	}
}

// NewListServerParamsWithContext creates a new ListServerParams object
// with the default values initialized, and the ability to set a context for a request
func NewListServerParamsWithContext(ctx context.Context) *ListServerParams {
	var ()
	return &ListServerParams{

		Context: ctx,
	}
}

// NewListServerParamsWithHTTPClient creates a new ListServerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListServerParamsWithHTTPClient(client *http.Client) *ListServerParams {
	var ()
	return &ListServerParams{
		HTTPClient: client,
	}
}

/*ListServerParams contains all the parameters to send to the API endpoint
for the list server operation typically these are written to a http.Request
*/
type ListServerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Region
	  region where DS server is located. if not specified it will list all servers.

	*/
	Region *string
	/*Count
	  how many items to return, default: 50

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
}

// WithTimeout adds the timeout to the list server params
func (o *ListServerParams) WithTimeout(timeout time.Duration) *ListServerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list server params
func (o *ListServerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list server params
func (o *ListServerParams) WithContext(ctx context.Context) *ListServerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list server params
func (o *ListServerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list server params
func (o *ListServerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list server params
func (o *ListServerParams) WithHTTPClient(client *http.Client) *ListServerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list server params
func (o *ListServerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list server params
func (o *ListServerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the list server params
func (o *ListServerParams) WithNamespace(namespace string) *ListServerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list server params
func (o *ListServerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRegion adds the region to the list server params
func (o *ListServerParams) WithRegion(region *string) *ListServerParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the list server params
func (o *ListServerParams) SetRegion(region *string) {
	o.Region = region
}

// WithCount adds the count to the list server params
func (o *ListServerParams) WithCount(count int64) *ListServerParams {
	o.SetCount(count)
	return o
}

// SetCount adds the count to the list server params
func (o *ListServerParams) SetCount(count int64) {
	o.Count = count
}

// WithOffset adds the offset to the list server params
func (o *ListServerParams) WithOffset(offset int64) *ListServerParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the list server params
func (o *ListServerParams) SetOffset(offset int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *ListServerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
