// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewPublicReconcilePlayStationStoreParams creates a new PublicReconcilePlayStationStoreParams object
// with the default values initialized.
func NewPublicReconcilePlayStationStoreParams() *PublicReconcilePlayStationStoreParams {
	var ()
	return &PublicReconcilePlayStationStoreParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicReconcilePlayStationStoreParamsWithTimeout creates a new PublicReconcilePlayStationStoreParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicReconcilePlayStationStoreParamsWithTimeout(timeout time.Duration) *PublicReconcilePlayStationStoreParams {
	var ()
	return &PublicReconcilePlayStationStoreParams{

		timeout: timeout,
	}
}

// NewPublicReconcilePlayStationStoreParamsWithContext creates a new PublicReconcilePlayStationStoreParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicReconcilePlayStationStoreParamsWithContext(ctx context.Context) *PublicReconcilePlayStationStoreParams {
	var ()
	return &PublicReconcilePlayStationStoreParams{

		Context: ctx,
	}
}

// NewPublicReconcilePlayStationStoreParamsWithHTTPClient creates a new PublicReconcilePlayStationStoreParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicReconcilePlayStationStoreParamsWithHTTPClient(client *http.Client) *PublicReconcilePlayStationStoreParams {
	var ()
	return &PublicReconcilePlayStationStoreParams{
		HTTPClient: client,
	}
}

/*PublicReconcilePlayStationStoreParams contains all the parameters to send to the API endpoint
for the public reconcile play station store operation typically these are written to a http.Request
*/
type PublicReconcilePlayStationStoreParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PlayStationReconcileRequest
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public reconcile play station store params
func (o *PublicReconcilePlayStationStoreParams) WithTimeout(timeout time.Duration) *PublicReconcilePlayStationStoreParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public reconcile play station store params
func (o *PublicReconcilePlayStationStoreParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public reconcile play station store params
func (o *PublicReconcilePlayStationStoreParams) WithContext(ctx context.Context) *PublicReconcilePlayStationStoreParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public reconcile play station store params
func (o *PublicReconcilePlayStationStoreParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public reconcile play station store params
func (o *PublicReconcilePlayStationStoreParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public reconcile play station store params
func (o *PublicReconcilePlayStationStoreParams) WithHTTPClient(client *http.Client) *PublicReconcilePlayStationStoreParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public reconcile play station store params
func (o *PublicReconcilePlayStationStoreParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public reconcile play station store params
func (o *PublicReconcilePlayStationStoreParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicReconcilePlayStationStoreParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public reconcile play station store params
func (o *PublicReconcilePlayStationStoreParams) WithBody(body *platformclientmodels.PlayStationReconcileRequest) *PublicReconcilePlayStationStoreParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public reconcile play station store params
func (o *PublicReconcilePlayStationStoreParams) SetBody(body *platformclientmodels.PlayStationReconcileRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public reconcile play station store params
func (o *PublicReconcilePlayStationStoreParams) WithNamespace(namespace string) *PublicReconcilePlayStationStoreParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public reconcile play station store params
func (o *PublicReconcilePlayStationStoreParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public reconcile play station store params
func (o *PublicReconcilePlayStationStoreParams) WithUserID(userID string) *PublicReconcilePlayStationStoreParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public reconcile play station store params
func (o *PublicReconcilePlayStationStoreParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicReconcilePlayStationStoreParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
