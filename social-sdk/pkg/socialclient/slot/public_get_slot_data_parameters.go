// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package slot

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

// NewPublicGetSlotDataParams creates a new PublicGetSlotDataParams object
// with the default values initialized.
func NewPublicGetSlotDataParams() *PublicGetSlotDataParams {
	var ()
	return &PublicGetSlotDataParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetSlotDataParamsWithTimeout creates a new PublicGetSlotDataParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetSlotDataParamsWithTimeout(timeout time.Duration) *PublicGetSlotDataParams {
	var ()
	return &PublicGetSlotDataParams{

		timeout: timeout,
	}
}

// NewPublicGetSlotDataParamsWithContext creates a new PublicGetSlotDataParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetSlotDataParamsWithContext(ctx context.Context) *PublicGetSlotDataParams {
	var ()
	return &PublicGetSlotDataParams{

		Context: ctx,
	}
}

// NewPublicGetSlotDataParamsWithHTTPClient creates a new PublicGetSlotDataParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetSlotDataParamsWithHTTPClient(client *http.Client) *PublicGetSlotDataParams {
	var ()
	return &PublicGetSlotDataParams{
		HTTPClient: client,
	}
}

/*PublicGetSlotDataParams contains all the parameters to send to the API endpoint
for the public get slot data operation typically these are written to a http.Request
*/
type PublicGetSlotDataParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace ID

	*/
	Namespace string
	/*SlotID
	  Slot ID

	*/
	SlotID string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get slot data params
func (o *PublicGetSlotDataParams) WithTimeout(timeout time.Duration) *PublicGetSlotDataParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get slot data params
func (o *PublicGetSlotDataParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get slot data params
func (o *PublicGetSlotDataParams) WithContext(ctx context.Context) *PublicGetSlotDataParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get slot data params
func (o *PublicGetSlotDataParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get slot data params
func (o *PublicGetSlotDataParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get slot data params
func (o *PublicGetSlotDataParams) WithHTTPClient(client *http.Client) *PublicGetSlotDataParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get slot data params
func (o *PublicGetSlotDataParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get slot data params
func (o *PublicGetSlotDataParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get slot data params
func (o *PublicGetSlotDataParams) WithNamespace(namespace string) *PublicGetSlotDataParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get slot data params
func (o *PublicGetSlotDataParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSlotID adds the slotID to the public get slot data params
func (o *PublicGetSlotDataParams) WithSlotID(slotID string) *PublicGetSlotDataParams {
	o.SetSlotID(slotID)
	return o
}

// SetSlotID adds the slotId to the public get slot data params
func (o *PublicGetSlotDataParams) SetSlotID(slotID string) {
	o.SlotID = slotID
}

// WithUserID adds the userID to the public get slot data params
func (o *PublicGetSlotDataParams) WithUserID(userID string) *PublicGetSlotDataParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get slot data params
func (o *PublicGetSlotDataParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetSlotDataParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param slotId
	if err := r.SetPathParam("slotId", o.SlotID); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
