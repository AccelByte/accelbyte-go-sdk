// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match_pools

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// NewPostMatchErrorMetricParams creates a new PostMatchErrorMetricParams object
// with the default values initialized.
func NewPostMatchErrorMetricParams() *PostMatchErrorMetricParams {
	var ()
	return &PostMatchErrorMetricParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPostMatchErrorMetricParamsWithTimeout creates a new PostMatchErrorMetricParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPostMatchErrorMetricParamsWithTimeout(timeout time.Duration) *PostMatchErrorMetricParams {
	var ()
	return &PostMatchErrorMetricParams{

		timeout: timeout,
	}
}

// NewPostMatchErrorMetricParamsWithContext creates a new PostMatchErrorMetricParams object
// with the default values initialized, and the ability to set a context for a request
func NewPostMatchErrorMetricParamsWithContext(ctx context.Context) *PostMatchErrorMetricParams {
	var ()
	return &PostMatchErrorMetricParams{

		Context: ctx,
	}
}

// NewPostMatchErrorMetricParamsWithHTTPClient creates a new PostMatchErrorMetricParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPostMatchErrorMetricParamsWithHTTPClient(client *http.Client) *PostMatchErrorMetricParams {
	var ()
	return &PostMatchErrorMetricParams{
		HTTPClient: client,
	}
}

/*PostMatchErrorMetricParams contains all the parameters to send to the API endpoint
for the post match error metric operation typically these are written to a http.Request
*/
type PostMatchErrorMetricParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *match2clientmodels.APIExternalFailureMetricRecord
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Pool
	  Name of the match pool

	*/
	Pool string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the post match error metric params
func (o *PostMatchErrorMetricParams) WithTimeout(timeout time.Duration) *PostMatchErrorMetricParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the post match error metric params
func (o *PostMatchErrorMetricParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the post match error metric params
func (o *PostMatchErrorMetricParams) WithContext(ctx context.Context) *PostMatchErrorMetricParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the post match error metric params
func (o *PostMatchErrorMetricParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the post match error metric params
func (o *PostMatchErrorMetricParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the post match error metric params
func (o *PostMatchErrorMetricParams) WithHTTPClient(client *http.Client) *PostMatchErrorMetricParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the post match error metric params
func (o *PostMatchErrorMetricParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the post match error metric params
func (o *PostMatchErrorMetricParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PostMatchErrorMetricParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the post match error metric params
func (o *PostMatchErrorMetricParams) WithBody(body *match2clientmodels.APIExternalFailureMetricRecord) *PostMatchErrorMetricParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the post match error metric params
func (o *PostMatchErrorMetricParams) SetBody(body *match2clientmodels.APIExternalFailureMetricRecord) {
	o.Body = body
}

// WithNamespace adds the namespace to the post match error metric params
func (o *PostMatchErrorMetricParams) WithNamespace(namespace string) *PostMatchErrorMetricParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the post match error metric params
func (o *PostMatchErrorMetricParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPool adds the pool to the post match error metric params
func (o *PostMatchErrorMetricParams) WithPool(pool string) *PostMatchErrorMetricParams {
	o.SetPool(pool)
	return o
}

// SetPool adds the pool to the post match error metric params
func (o *PostMatchErrorMetricParams) SetPool(pool string) {
	o.Pool = pool
}

// WriteToRequest writes these params to a swagger request
func (o *PostMatchErrorMetricParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param pool
	if err := r.SetPathParam("pool", o.Pool); err != nil {
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
