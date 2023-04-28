// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package item

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

// NewGetItemByAppIDParams creates a new GetItemByAppIDParams object
// with the default values initialized.
func NewGetItemByAppIDParams() *GetItemByAppIDParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemByAppIDParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetItemByAppIDParamsWithTimeout creates a new GetItemByAppIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetItemByAppIDParamsWithTimeout(timeout time.Duration) *GetItemByAppIDParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemByAppIDParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: timeout,
	}
}

// NewGetItemByAppIDParamsWithContext creates a new GetItemByAppIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetItemByAppIDParamsWithContext(ctx context.Context) *GetItemByAppIDParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemByAppIDParams{
		ActiveOnly: &activeOnlyDefault,

		Context: ctx,
	}
}

// NewGetItemByAppIDParamsWithHTTPClient creates a new GetItemByAppIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetItemByAppIDParamsWithHTTPClient(client *http.Client) *GetItemByAppIDParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemByAppIDParams{
		ActiveOnly: &activeOnlyDefault,
		HTTPClient: client,
	}
}

/*GetItemByAppIDParams contains all the parameters to send to the API endpoint
for the get item by app id operation typically these are written to a http.Request
*/
type GetItemByAppIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*ActiveOnly*/
	ActiveOnly *bool
	/*StoreID
	  default is published store id

	*/
	StoreID *string
	/*AppID*/
	AppID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get item by app id params
func (o *GetItemByAppIDParams) WithTimeout(timeout time.Duration) *GetItemByAppIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get item by app id params
func (o *GetItemByAppIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get item by app id params
func (o *GetItemByAppIDParams) WithContext(ctx context.Context) *GetItemByAppIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get item by app id params
func (o *GetItemByAppIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get item by app id params
func (o *GetItemByAppIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get item by app id params
func (o *GetItemByAppIDParams) WithHTTPClient(client *http.Client) *GetItemByAppIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get item by app id params
func (o *GetItemByAppIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get item by app id params
func (o *GetItemByAppIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get item by app id params
func (o *GetItemByAppIDParams) WithNamespace(namespace string) *GetItemByAppIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get item by app id params
func (o *GetItemByAppIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the get item by app id params
func (o *GetItemByAppIDParams) WithActiveOnly(activeOnly *bool) *GetItemByAppIDParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the get item by app id params
func (o *GetItemByAppIDParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithStoreID adds the storeID to the get item by app id params
func (o *GetItemByAppIDParams) WithStoreID(storeID *string) *GetItemByAppIDParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the get item by app id params
func (o *GetItemByAppIDParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WithAppID adds the appID to the get item by app id params
func (o *GetItemByAppIDParams) WithAppID(appID string) *GetItemByAppIDParams {
	o.SetAppID(appID)
	return o
}

// SetAppID adds the appId to the get item by app id params
func (o *GetItemByAppIDParams) SetAppID(appID string) {
	o.AppID = appID
}

// WriteToRequest writes these params to a swagger request
func (o *GetItemByAppIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ActiveOnly != nil {

		// query param activeOnly
		var qrActiveOnly bool
		if o.ActiveOnly != nil {
			qrActiveOnly = *o.ActiveOnly
		}
		qActiveOnly := swag.FormatBool(qrActiveOnly)
		if qActiveOnly != "" {
			if err := r.SetQueryParam("activeOnly", qActiveOnly); err != nil {
				return err
			}
		}

	}

	if o.StoreID != nil {

		// query param storeId
		var qrStoreID string
		if o.StoreID != nil {
			qrStoreID = *o.StoreID
		}
		qStoreID := qrStoreID
		if qStoreID != "" {
			if err := r.SetQueryParam("storeId", qStoreID); err != nil {
				return err
			}
		}

	}

	// query param appId
	qrAppID := o.AppID
	qAppID := qrAppID
	if qAppID != "" {
		if err := r.SetQueryParam("appId", qAppID); err != nil {
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
