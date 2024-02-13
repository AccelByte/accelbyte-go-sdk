// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ttl_config

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

// NewDeleteGameRecordTTLConfigParams creates a new DeleteGameRecordTTLConfigParams object
// with the default values initialized.
func NewDeleteGameRecordTTLConfigParams() *DeleteGameRecordTTLConfigParams {
	var ()
	return &DeleteGameRecordTTLConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteGameRecordTTLConfigParamsWithTimeout creates a new DeleteGameRecordTTLConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteGameRecordTTLConfigParamsWithTimeout(timeout time.Duration) *DeleteGameRecordTTLConfigParams {
	var ()
	return &DeleteGameRecordTTLConfigParams{

		timeout: timeout,
	}
}

// NewDeleteGameRecordTTLConfigParamsWithContext creates a new DeleteGameRecordTTLConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteGameRecordTTLConfigParamsWithContext(ctx context.Context) *DeleteGameRecordTTLConfigParams {
	var ()
	return &DeleteGameRecordTTLConfigParams{

		Context: ctx,
	}
}

// NewDeleteGameRecordTTLConfigParamsWithHTTPClient creates a new DeleteGameRecordTTLConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteGameRecordTTLConfigParamsWithHTTPClient(client *http.Client) *DeleteGameRecordTTLConfigParams {
	var ()
	return &DeleteGameRecordTTLConfigParams{
		HTTPClient: client,
	}
}

/*DeleteGameRecordTTLConfigParams contains all the parameters to send to the API endpoint
for the delete game record ttl config operation typically these are written to a http.Request
*/
type DeleteGameRecordTTLConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Key
	  key of record

	*/
	Key string
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete game record ttl config params
func (o *DeleteGameRecordTTLConfigParams) WithTimeout(timeout time.Duration) *DeleteGameRecordTTLConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete game record ttl config params
func (o *DeleteGameRecordTTLConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete game record ttl config params
func (o *DeleteGameRecordTTLConfigParams) WithContext(ctx context.Context) *DeleteGameRecordTTLConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete game record ttl config params
func (o *DeleteGameRecordTTLConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete game record ttl config params
func (o *DeleteGameRecordTTLConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete game record ttl config params
func (o *DeleteGameRecordTTLConfigParams) WithHTTPClient(client *http.Client) *DeleteGameRecordTTLConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete game record ttl config params
func (o *DeleteGameRecordTTLConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete game record ttl config params
func (o *DeleteGameRecordTTLConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteGameRecordTTLConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithKey adds the key to the delete game record ttl config params
func (o *DeleteGameRecordTTLConfigParams) WithKey(key string) *DeleteGameRecordTTLConfigParams {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the delete game record ttl config params
func (o *DeleteGameRecordTTLConfigParams) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the delete game record ttl config params
func (o *DeleteGameRecordTTLConfigParams) WithNamespace(namespace string) *DeleteGameRecordTTLConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete game record ttl config params
func (o *DeleteGameRecordTTLConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteGameRecordTTLConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param key
	if err := r.SetPathParam("key", o.Key); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
