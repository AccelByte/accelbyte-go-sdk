// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_profile

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// NewPublicUpdateAttributeParams creates a new PublicUpdateAttributeParams object
// with the default values initialized.
func NewPublicUpdateAttributeParams() *PublicUpdateAttributeParams {
	var ()
	return &PublicUpdateAttributeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpdateAttributeParamsWithTimeout creates a new PublicUpdateAttributeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpdateAttributeParamsWithTimeout(timeout time.Duration) *PublicUpdateAttributeParams {
	var ()
	return &PublicUpdateAttributeParams{

		timeout: timeout,
	}
}

// NewPublicUpdateAttributeParamsWithContext creates a new PublicUpdateAttributeParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpdateAttributeParamsWithContext(ctx context.Context) *PublicUpdateAttributeParams {
	var ()
	return &PublicUpdateAttributeParams{

		Context: ctx,
	}
}

// NewPublicUpdateAttributeParamsWithHTTPClient creates a new PublicUpdateAttributeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpdateAttributeParamsWithHTTPClient(client *http.Client) *PublicUpdateAttributeParams {
	var ()
	return &PublicUpdateAttributeParams{
		HTTPClient: client,
	}
}

/*PublicUpdateAttributeParams contains all the parameters to send to the API endpoint
for the public update attribute operation typically these are written to a http.Request
*/
type PublicUpdateAttributeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *socialclientmodels.Attribute
	/*AttributeName
	  Attribute Name

	*/
	AttributeName string
	/*Namespace
	  Namespace ID

	*/
	Namespace string
	/*ProfileID
	  Game profile ID

	*/
	ProfileID string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public update attribute params
func (o *PublicUpdateAttributeParams) WithTimeout(timeout time.Duration) *PublicUpdateAttributeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public update attribute params
func (o *PublicUpdateAttributeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public update attribute params
func (o *PublicUpdateAttributeParams) WithContext(ctx context.Context) *PublicUpdateAttributeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public update attribute params
func (o *PublicUpdateAttributeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public update attribute params
func (o *PublicUpdateAttributeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public update attribute params
func (o *PublicUpdateAttributeParams) WithHTTPClient(client *http.Client) *PublicUpdateAttributeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public update attribute params
func (o *PublicUpdateAttributeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public update attribute params
func (o *PublicUpdateAttributeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public update attribute params
func (o *PublicUpdateAttributeParams) WithBody(body *socialclientmodels.Attribute) *PublicUpdateAttributeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public update attribute params
func (o *PublicUpdateAttributeParams) SetBody(body *socialclientmodels.Attribute) {
	o.Body = body
}

// WithAttributeName adds the attributeName to the public update attribute params
func (o *PublicUpdateAttributeParams) WithAttributeName(attributeName string) *PublicUpdateAttributeParams {
	o.SetAttributeName(attributeName)
	return o
}

// SetAttributeName adds the attributeName to the public update attribute params
func (o *PublicUpdateAttributeParams) SetAttributeName(attributeName string) {
	o.AttributeName = attributeName
}

// WithNamespace adds the namespace to the public update attribute params
func (o *PublicUpdateAttributeParams) WithNamespace(namespace string) *PublicUpdateAttributeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public update attribute params
func (o *PublicUpdateAttributeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithProfileID adds the profileID to the public update attribute params
func (o *PublicUpdateAttributeParams) WithProfileID(profileID string) *PublicUpdateAttributeParams {
	o.SetProfileID(profileID)
	return o
}

// SetProfileID adds the profileId to the public update attribute params
func (o *PublicUpdateAttributeParams) SetProfileID(profileID string) {
	o.ProfileID = profileID
}

// WithUserID adds the userID to the public update attribute params
func (o *PublicUpdateAttributeParams) WithUserID(userID string) *PublicUpdateAttributeParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public update attribute params
func (o *PublicUpdateAttributeParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpdateAttributeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param attributeName
	if err := r.SetPathParam("attributeName", o.AttributeName); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param profileId
	if err := r.SetPathParam("profileId", o.ProfileID); err != nil {
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
