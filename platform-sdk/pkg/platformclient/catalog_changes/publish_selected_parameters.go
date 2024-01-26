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

// NewPublishSelectedParams creates a new PublishSelectedParams object
// with the default values initialized.
func NewPublishSelectedParams() *PublishSelectedParams {
	var ()
	return &PublishSelectedParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublishSelectedParamsWithTimeout creates a new PublishSelectedParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublishSelectedParamsWithTimeout(timeout time.Duration) *PublishSelectedParams {
	var ()
	return &PublishSelectedParams{

		timeout: timeout,
	}
}

// NewPublishSelectedParamsWithContext creates a new PublishSelectedParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublishSelectedParamsWithContext(ctx context.Context) *PublishSelectedParams {
	var ()
	return &PublishSelectedParams{

		Context: ctx,
	}
}

// NewPublishSelectedParamsWithHTTPClient creates a new PublishSelectedParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublishSelectedParamsWithHTTPClient(client *http.Client) *PublishSelectedParams {
	var ()
	return &PublishSelectedParams{
		HTTPClient: client,
	}
}

/*PublishSelectedParams contains all the parameters to send to the API endpoint
for the publish selected operation typically these are written to a http.Request
*/
type PublishSelectedParams struct {

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

// WithTimeout adds the timeout to the publish selected params
func (o *PublishSelectedParams) WithTimeout(timeout time.Duration) *PublishSelectedParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the publish selected params
func (o *PublishSelectedParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the publish selected params
func (o *PublishSelectedParams) WithContext(ctx context.Context) *PublishSelectedParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the publish selected params
func (o *PublishSelectedParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the publish selected params
func (o *PublishSelectedParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the publish selected params
func (o *PublishSelectedParams) WithHTTPClient(client *http.Client) *PublishSelectedParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the publish selected params
func (o *PublishSelectedParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the publish selected params
func (o *PublishSelectedParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublishSelectedParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the publish selected params
func (o *PublishSelectedParams) WithNamespace(namespace string) *PublishSelectedParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the publish selected params
func (o *PublishSelectedParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the publish selected params
func (o *PublishSelectedParams) WithStoreID(storeID string) *PublishSelectedParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the publish selected params
func (o *PublishSelectedParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *PublishSelectedParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
