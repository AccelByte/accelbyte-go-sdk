// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

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

// NewGetPublisherConfigParams creates a new GetPublisherConfigParams object
// with the default values initialized.
func NewGetPublisherConfigParams() *GetPublisherConfigParams {
	var ()
	return &GetPublisherConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPublisherConfigParamsWithTimeout creates a new GetPublisherConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPublisherConfigParamsWithTimeout(timeout time.Duration) *GetPublisherConfigParams {
	var ()
	return &GetPublisherConfigParams{

		timeout: timeout,
	}
}

// NewGetPublisherConfigParamsWithContext creates a new GetPublisherConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPublisherConfigParamsWithContext(ctx context.Context) *GetPublisherConfigParams {
	var ()
	return &GetPublisherConfigParams{

		Context: ctx,
	}
}

// NewGetPublisherConfigParamsWithHTTPClient creates a new GetPublisherConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPublisherConfigParamsWithHTTPClient(client *http.Client) *GetPublisherConfigParams {
	var ()
	return &GetPublisherConfigParams{
		HTTPClient: client,
	}
}

/*GetPublisherConfigParams contains all the parameters to send to the API endpoint
for the get publisher config operation typically these are written to a http.Request
*/
type GetPublisherConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ConfigKey*/
	ConfigKey string
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get publisher config params
func (o *GetPublisherConfigParams) WithTimeout(timeout time.Duration) *GetPublisherConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get publisher config params
func (o *GetPublisherConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get publisher config params
func (o *GetPublisherConfigParams) WithContext(ctx context.Context) *GetPublisherConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get publisher config params
func (o *GetPublisherConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get publisher config params
func (o *GetPublisherConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get publisher config params
func (o *GetPublisherConfigParams) WithHTTPClient(client *http.Client) *GetPublisherConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get publisher config params
func (o *GetPublisherConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get publisher config params
func (o *GetPublisherConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetPublisherConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithConfigKey adds the configKey to the get publisher config params
func (o *GetPublisherConfigParams) WithConfigKey(configKey string) *GetPublisherConfigParams {
	o.SetConfigKey(configKey)
	return o
}

// SetConfigKey adds the configKey to the get publisher config params
func (o *GetPublisherConfigParams) SetConfigKey(configKey string) {
	o.ConfigKey = configKey
}

// WithNamespace adds the namespace to the get publisher config params
func (o *GetPublisherConfigParams) WithNamespace(namespace string) *GetPublisherConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get publisher config params
func (o *GetPublisherConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetPublisherConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param configKey
	if err := r.SetPathParam("configKey", o.ConfigKey); err != nil {
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
