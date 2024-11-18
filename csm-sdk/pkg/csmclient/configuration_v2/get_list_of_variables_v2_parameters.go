// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration_v2

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

// NewGetListOfVariablesV2Params creates a new GetListOfVariablesV2Params object
// with the default values initialized.
func NewGetListOfVariablesV2Params() *GetListOfVariablesV2Params {
	var ()
	return &GetListOfVariablesV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetListOfVariablesV2ParamsWithTimeout creates a new GetListOfVariablesV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetListOfVariablesV2ParamsWithTimeout(timeout time.Duration) *GetListOfVariablesV2Params {
	var ()
	return &GetListOfVariablesV2Params{

		timeout: timeout,
	}
}

// NewGetListOfVariablesV2ParamsWithContext creates a new GetListOfVariablesV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetListOfVariablesV2ParamsWithContext(ctx context.Context) *GetListOfVariablesV2Params {
	var ()
	return &GetListOfVariablesV2Params{

		Context: ctx,
	}
}

// NewGetListOfVariablesV2ParamsWithHTTPClient creates a new GetListOfVariablesV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetListOfVariablesV2ParamsWithHTTPClient(client *http.Client) *GetListOfVariablesV2Params {
	var ()
	return &GetListOfVariablesV2Params{
		HTTPClient: client,
	}
}

/*GetListOfVariablesV2Params contains all the parameters to send to the API endpoint
for the get list of variables v2 operation typically these are written to a http.Request
*/
type GetListOfVariablesV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*App
	  App Name

	*/
	App string
	/*Namespace
	  Game Namespace

	*/
	Namespace string
	/*Limit
	  Limit

	*/
	Limit *int64
	/*Offset
	  Offset

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get list of variables v2 params
func (o *GetListOfVariablesV2Params) WithTimeout(timeout time.Duration) *GetListOfVariablesV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get list of variables v2 params
func (o *GetListOfVariablesV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get list of variables v2 params
func (o *GetListOfVariablesV2Params) WithContext(ctx context.Context) *GetListOfVariablesV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get list of variables v2 params
func (o *GetListOfVariablesV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get list of variables v2 params
func (o *GetListOfVariablesV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get list of variables v2 params
func (o *GetListOfVariablesV2Params) WithHTTPClient(client *http.Client) *GetListOfVariablesV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get list of variables v2 params
func (o *GetListOfVariablesV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get list of variables v2 params
func (o *GetListOfVariablesV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetListOfVariablesV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithApp adds the app to the get list of variables v2 params
func (o *GetListOfVariablesV2Params) WithApp(app string) *GetListOfVariablesV2Params {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the get list of variables v2 params
func (o *GetListOfVariablesV2Params) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the get list of variables v2 params
func (o *GetListOfVariablesV2Params) WithNamespace(namespace string) *GetListOfVariablesV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get list of variables v2 params
func (o *GetListOfVariablesV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get list of variables v2 params
func (o *GetListOfVariablesV2Params) WithLimit(limit *int64) *GetListOfVariablesV2Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get list of variables v2 params
func (o *GetListOfVariablesV2Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get list of variables v2 params
func (o *GetListOfVariablesV2Params) WithOffset(offset *int64) *GetListOfVariablesV2Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get list of variables v2 params
func (o *GetListOfVariablesV2Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetListOfVariablesV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param app
	if err := r.SetPathParam("app", o.App); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
