// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewListCrossNamespaceAccountLinkParams creates a new ListCrossNamespaceAccountLinkParams object
// with the default values initialized.
func NewListCrossNamespaceAccountLinkParams() *ListCrossNamespaceAccountLinkParams {
	var ()
	return &ListCrossNamespaceAccountLinkParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListCrossNamespaceAccountLinkParamsWithTimeout creates a new ListCrossNamespaceAccountLinkParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListCrossNamespaceAccountLinkParamsWithTimeout(timeout time.Duration) *ListCrossNamespaceAccountLinkParams {
	var ()
	return &ListCrossNamespaceAccountLinkParams{

		timeout: timeout,
	}
}

// NewListCrossNamespaceAccountLinkParamsWithContext creates a new ListCrossNamespaceAccountLinkParams object
// with the default values initialized, and the ability to set a context for a request
func NewListCrossNamespaceAccountLinkParamsWithContext(ctx context.Context) *ListCrossNamespaceAccountLinkParams {
	var ()
	return &ListCrossNamespaceAccountLinkParams{

		Context: ctx,
	}
}

// NewListCrossNamespaceAccountLinkParamsWithHTTPClient creates a new ListCrossNamespaceAccountLinkParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListCrossNamespaceAccountLinkParamsWithHTTPClient(client *http.Client) *ListCrossNamespaceAccountLinkParams {
	var ()
	return &ListCrossNamespaceAccountLinkParams{
		HTTPClient: client,
	}
}

/*ListCrossNamespaceAccountLinkParams contains all the parameters to send to the API endpoint
for the list cross namespace account link operation typically these are written to a http.Request
*/
type ListCrossNamespaceAccountLinkParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*PlatformID
	  Current platform ID

	*/
	PlatformID *string
	/*LinkingToken
	  Access token of the targeted account

	*/
	LinkingToken string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list cross namespace account link params
func (o *ListCrossNamespaceAccountLinkParams) WithTimeout(timeout time.Duration) *ListCrossNamespaceAccountLinkParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list cross namespace account link params
func (o *ListCrossNamespaceAccountLinkParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list cross namespace account link params
func (o *ListCrossNamespaceAccountLinkParams) WithContext(ctx context.Context) *ListCrossNamespaceAccountLinkParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list cross namespace account link params
func (o *ListCrossNamespaceAccountLinkParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list cross namespace account link params
func (o *ListCrossNamespaceAccountLinkParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list cross namespace account link params
func (o *ListCrossNamespaceAccountLinkParams) WithHTTPClient(client *http.Client) *ListCrossNamespaceAccountLinkParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list cross namespace account link params
func (o *ListCrossNamespaceAccountLinkParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list cross namespace account link params
func (o *ListCrossNamespaceAccountLinkParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListCrossNamespaceAccountLinkParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithPlatformID adds the platformID to the list cross namespace account link params
func (o *ListCrossNamespaceAccountLinkParams) WithPlatformID(platformID *string) *ListCrossNamespaceAccountLinkParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the list cross namespace account link params
func (o *ListCrossNamespaceAccountLinkParams) SetPlatformID(platformID *string) {
	o.PlatformID = platformID
}

// WithLinkingToken adds the linkingToken to the list cross namespace account link params
func (o *ListCrossNamespaceAccountLinkParams) WithLinkingToken(linkingToken string) *ListCrossNamespaceAccountLinkParams {
	o.SetLinkingToken(linkingToken)
	return o
}

// SetLinkingToken adds the linkingToken to the list cross namespace account link params
func (o *ListCrossNamespaceAccountLinkParams) SetLinkingToken(linkingToken string) {
	o.LinkingToken = linkingToken
}

// WithNamespace adds the namespace to the list cross namespace account link params
func (o *ListCrossNamespaceAccountLinkParams) WithNamespace(namespace string) *ListCrossNamespaceAccountLinkParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list cross namespace account link params
func (o *ListCrossNamespaceAccountLinkParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the list cross namespace account link params
func (o *ListCrossNamespaceAccountLinkParams) WithUserID(userID string) *ListCrossNamespaceAccountLinkParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the list cross namespace account link params
func (o *ListCrossNamespaceAccountLinkParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *ListCrossNamespaceAccountLinkParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.PlatformID != nil {

		// form param platformId
		var frPlatformID string
		if o.PlatformID != nil {
			frPlatformID = *o.PlatformID
		}
		fPlatformID := frPlatformID
		if fPlatformID != "" {
			if err := r.SetFormParam("platformId", fPlatformID); err != nil {
				return err
			}
		}

	}

	// form param linkingToken
	frLinkingToken := o.LinkingToken
	fLinkingToken := frLinkingToken
	if fLinkingToken != "" {
		if err := r.SetFormParam("linkingToken", fLinkingToken); err != nil {
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
