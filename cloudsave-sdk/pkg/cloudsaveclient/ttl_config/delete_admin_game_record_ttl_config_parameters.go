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

// NewDeleteAdminGameRecordTTLConfigParams creates a new DeleteAdminGameRecordTTLConfigParams object
// with the default values initialized.
func NewDeleteAdminGameRecordTTLConfigParams() *DeleteAdminGameRecordTTLConfigParams {
	var ()
	return &DeleteAdminGameRecordTTLConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteAdminGameRecordTTLConfigParamsWithTimeout creates a new DeleteAdminGameRecordTTLConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteAdminGameRecordTTLConfigParamsWithTimeout(timeout time.Duration) *DeleteAdminGameRecordTTLConfigParams {
	var ()
	return &DeleteAdminGameRecordTTLConfigParams{

		timeout: timeout,
	}
}

// NewDeleteAdminGameRecordTTLConfigParamsWithContext creates a new DeleteAdminGameRecordTTLConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteAdminGameRecordTTLConfigParamsWithContext(ctx context.Context) *DeleteAdminGameRecordTTLConfigParams {
	var ()
	return &DeleteAdminGameRecordTTLConfigParams{

		Context: ctx,
	}
}

// NewDeleteAdminGameRecordTTLConfigParamsWithHTTPClient creates a new DeleteAdminGameRecordTTLConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteAdminGameRecordTTLConfigParamsWithHTTPClient(client *http.Client) *DeleteAdminGameRecordTTLConfigParams {
	var ()
	return &DeleteAdminGameRecordTTLConfigParams{
		HTTPClient: client,
	}
}

/*DeleteAdminGameRecordTTLConfigParams contains all the parameters to send to the API endpoint
for the delete admin game record ttl config operation typically these are written to a http.Request
*/
type DeleteAdminGameRecordTTLConfigParams struct {

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

// WithTimeout adds the timeout to the delete admin game record ttl config params
func (o *DeleteAdminGameRecordTTLConfigParams) WithTimeout(timeout time.Duration) *DeleteAdminGameRecordTTLConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete admin game record ttl config params
func (o *DeleteAdminGameRecordTTLConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete admin game record ttl config params
func (o *DeleteAdminGameRecordTTLConfigParams) WithContext(ctx context.Context) *DeleteAdminGameRecordTTLConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete admin game record ttl config params
func (o *DeleteAdminGameRecordTTLConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete admin game record ttl config params
func (o *DeleteAdminGameRecordTTLConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete admin game record ttl config params
func (o *DeleteAdminGameRecordTTLConfigParams) WithHTTPClient(client *http.Client) *DeleteAdminGameRecordTTLConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete admin game record ttl config params
func (o *DeleteAdminGameRecordTTLConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete admin game record ttl config params
func (o *DeleteAdminGameRecordTTLConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteAdminGameRecordTTLConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithKey adds the key to the delete admin game record ttl config params
func (o *DeleteAdminGameRecordTTLConfigParams) WithKey(key string) *DeleteAdminGameRecordTTLConfigParams {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the delete admin game record ttl config params
func (o *DeleteAdminGameRecordTTLConfigParams) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the delete admin game record ttl config params
func (o *DeleteAdminGameRecordTTLConfigParams) WithNamespace(namespace string) *DeleteAdminGameRecordTTLConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete admin game record ttl config params
func (o *DeleteAdminGameRecordTTLConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteAdminGameRecordTTLConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
