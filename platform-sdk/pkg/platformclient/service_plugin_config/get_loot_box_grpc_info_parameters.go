// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package service_plugin_config

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

// NewGetLootBoxGrpcInfoParams creates a new GetLootBoxGrpcInfoParams object
// with the default values initialized.
func NewGetLootBoxGrpcInfoParams() *GetLootBoxGrpcInfoParams {
	var ()
	return &GetLootBoxGrpcInfoParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetLootBoxGrpcInfoParamsWithTimeout creates a new GetLootBoxGrpcInfoParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetLootBoxGrpcInfoParamsWithTimeout(timeout time.Duration) *GetLootBoxGrpcInfoParams {
	var ()
	return &GetLootBoxGrpcInfoParams{

		timeout: timeout,
	}
}

// NewGetLootBoxGrpcInfoParamsWithContext creates a new GetLootBoxGrpcInfoParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetLootBoxGrpcInfoParamsWithContext(ctx context.Context) *GetLootBoxGrpcInfoParams {
	var ()
	return &GetLootBoxGrpcInfoParams{

		Context: ctx,
	}
}

// NewGetLootBoxGrpcInfoParamsWithHTTPClient creates a new GetLootBoxGrpcInfoParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetLootBoxGrpcInfoParamsWithHTTPClient(client *http.Client) *GetLootBoxGrpcInfoParams {
	var ()
	return &GetLootBoxGrpcInfoParams{
		HTTPClient: client,
	}
}

/*GetLootBoxGrpcInfoParams contains all the parameters to send to the API endpoint
for the get loot box grpc info operation typically these are written to a http.Request
*/
type GetLootBoxGrpcInfoParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Force*/
	Force *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get loot box grpc info params
func (o *GetLootBoxGrpcInfoParams) WithTimeout(timeout time.Duration) *GetLootBoxGrpcInfoParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get loot box grpc info params
func (o *GetLootBoxGrpcInfoParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get loot box grpc info params
func (o *GetLootBoxGrpcInfoParams) WithContext(ctx context.Context) *GetLootBoxGrpcInfoParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get loot box grpc info params
func (o *GetLootBoxGrpcInfoParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get loot box grpc info params
func (o *GetLootBoxGrpcInfoParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get loot box grpc info params
func (o *GetLootBoxGrpcInfoParams) WithHTTPClient(client *http.Client) *GetLootBoxGrpcInfoParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get loot box grpc info params
func (o *GetLootBoxGrpcInfoParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get loot box grpc info params
func (o *GetLootBoxGrpcInfoParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetLootBoxGrpcInfoParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get loot box grpc info params
func (o *GetLootBoxGrpcInfoParams) WithNamespace(namespace string) *GetLootBoxGrpcInfoParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get loot box grpc info params
func (o *GetLootBoxGrpcInfoParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithForce adds the force to the get loot box grpc info params
func (o *GetLootBoxGrpcInfoParams) WithForce(force *bool) *GetLootBoxGrpcInfoParams {
	o.SetForce(force)
	return o
}

// SetForce adds the force to the get loot box grpc info params
func (o *GetLootBoxGrpcInfoParams) SetForce(force *bool) {
	o.Force = force
}

// WriteToRequest writes these params to a swagger request
func (o *GetLootBoxGrpcInfoParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Force != nil {

		// query param force
		var qrForce bool
		if o.Force != nil {
			qrForce = *o.Force
		}
		qForce := swag.FormatBool(qrForce)
		if qForce != "" {
			if err := r.SetQueryParam("force", qForce); err != nil {
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
