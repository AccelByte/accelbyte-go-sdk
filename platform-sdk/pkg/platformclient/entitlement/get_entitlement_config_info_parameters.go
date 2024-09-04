// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package entitlement

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

// NewGetEntitlementConfigInfoParams creates a new GetEntitlementConfigInfoParams object
// with the default values initialized.
func NewGetEntitlementConfigInfoParams() *GetEntitlementConfigInfoParams {
	var (
		withoutCacheDefault = bool(true)
	)
	return &GetEntitlementConfigInfoParams{
		WithoutCache: &withoutCacheDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetEntitlementConfigInfoParamsWithTimeout creates a new GetEntitlementConfigInfoParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetEntitlementConfigInfoParamsWithTimeout(timeout time.Duration) *GetEntitlementConfigInfoParams {
	var (
		withoutCacheDefault = bool(true)
	)
	return &GetEntitlementConfigInfoParams{
		WithoutCache: &withoutCacheDefault,

		timeout: timeout,
	}
}

// NewGetEntitlementConfigInfoParamsWithContext creates a new GetEntitlementConfigInfoParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetEntitlementConfigInfoParamsWithContext(ctx context.Context) *GetEntitlementConfigInfoParams {
	var (
		withoutCacheDefault = bool(true)
	)
	return &GetEntitlementConfigInfoParams{
		WithoutCache: &withoutCacheDefault,

		Context: ctx,
	}
}

// NewGetEntitlementConfigInfoParamsWithHTTPClient creates a new GetEntitlementConfigInfoParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetEntitlementConfigInfoParamsWithHTTPClient(client *http.Client) *GetEntitlementConfigInfoParams {
	var (
		withoutCacheDefault = bool(true)
	)
	return &GetEntitlementConfigInfoParams{
		WithoutCache: &withoutCacheDefault,
		HTTPClient:   client,
	}
}

/*GetEntitlementConfigInfoParams contains all the parameters to send to the API endpoint
for the get entitlement config info operation typically these are written to a http.Request
*/
type GetEntitlementConfigInfoParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*WithoutCache*/
	WithoutCache *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get entitlement config info params
func (o *GetEntitlementConfigInfoParams) WithTimeout(timeout time.Duration) *GetEntitlementConfigInfoParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get entitlement config info params
func (o *GetEntitlementConfigInfoParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get entitlement config info params
func (o *GetEntitlementConfigInfoParams) WithContext(ctx context.Context) *GetEntitlementConfigInfoParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get entitlement config info params
func (o *GetEntitlementConfigInfoParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get entitlement config info params
func (o *GetEntitlementConfigInfoParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get entitlement config info params
func (o *GetEntitlementConfigInfoParams) WithHTTPClient(client *http.Client) *GetEntitlementConfigInfoParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get entitlement config info params
func (o *GetEntitlementConfigInfoParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get entitlement config info params
func (o *GetEntitlementConfigInfoParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetEntitlementConfigInfoParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get entitlement config info params
func (o *GetEntitlementConfigInfoParams) WithNamespace(namespace string) *GetEntitlementConfigInfoParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get entitlement config info params
func (o *GetEntitlementConfigInfoParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithWithoutCache_ adds the withoutCache to the get entitlement config info params
func (o *GetEntitlementConfigInfoParams) WithWithoutCache_(withoutCache *bool) *GetEntitlementConfigInfoParams {
	o.SetWithoutCache(withoutCache)
	return o
}

// SetWithoutCache adds the withoutCache to the get entitlement config info params
func (o *GetEntitlementConfigInfoParams) SetWithoutCache(withoutCache *bool) {
	o.WithoutCache = withoutCache
}

// WriteToRequest writes these params to a swagger request
func (o *GetEntitlementConfigInfoParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.WithoutCache != nil {

		// query param withoutCache
		var qrWithoutCache bool
		if o.WithoutCache != nil {
			qrWithoutCache = *o.WithoutCache
		}
		qWithoutCache := swag.FormatBool(qrWithoutCache)
		if qWithoutCache != "" {
			if err := r.SetQueryParam("withoutCache", qWithoutCache); err != nil {
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
