// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package catalog_changes

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

// NewPublishAllParams creates a new PublishAllParams object
// with the default values initialized.
func NewPublishAllParams() *PublishAllParams {
	var ()
	return &PublishAllParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublishAllParamsWithTimeout creates a new PublishAllParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublishAllParamsWithTimeout(timeout time.Duration) *PublishAllParams {
	var ()
	return &PublishAllParams{

		timeout: timeout,
	}
}

// NewPublishAllParamsWithContext creates a new PublishAllParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublishAllParamsWithContext(ctx context.Context) *PublishAllParams {
	var ()
	return &PublishAllParams{

		Context: ctx,
	}
}

// NewPublishAllParamsWithHTTPClient creates a new PublishAllParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublishAllParamsWithHTTPClient(client *http.Client) *PublishAllParams {
	var ()
	return &PublishAllParams{
		HTTPClient: client,
	}
}

/*PublishAllParams contains all the parameters to send to the API endpoint
for the publish all operation typically these are written to a http.Request
*/
type PublishAllParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the publish all params
func (o *PublishAllParams) WithTimeout(timeout time.Duration) *PublishAllParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the publish all params
func (o *PublishAllParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the publish all params
func (o *PublishAllParams) WithContext(ctx context.Context) *PublishAllParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the publish all params
func (o *PublishAllParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the publish all params
func (o *PublishAllParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the publish all params
func (o *PublishAllParams) WithHTTPClient(client *http.Client) *PublishAllParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the publish all params
func (o *PublishAllParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the publish all params
func (o *PublishAllParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublishAllParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the publish all params
func (o *PublishAllParams) WithNamespace(namespace string) *PublishAllParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the publish all params
func (o *PublishAllParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the publish all params
func (o *PublishAllParams) WithStoreID(storeID string) *PublishAllParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the publish all params
func (o *PublishAllParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *PublishAllParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param storeId
	if err := r.SetPathParam("storeId", o.StoreID); err != nil {
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
