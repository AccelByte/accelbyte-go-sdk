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
	"github.com/go-openapi/swag"
)

// NewPublicCreateUserNamespaceSlotParams creates a new PublicCreateUserNamespaceSlotParams object
// with the default values initialized.
func NewPublicCreateUserNamespaceSlotParams() *PublicCreateUserNamespaceSlotParams {
	var ()
	return &PublicCreateUserNamespaceSlotParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicCreateUserNamespaceSlotParamsWithTimeout creates a new PublicCreateUserNamespaceSlotParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicCreateUserNamespaceSlotParamsWithTimeout(timeout time.Duration) *PublicCreateUserNamespaceSlotParams {
	var ()
	return &PublicCreateUserNamespaceSlotParams{

		timeout: timeout,
	}
}

// NewPublicCreateUserNamespaceSlotParamsWithContext creates a new PublicCreateUserNamespaceSlotParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicCreateUserNamespaceSlotParamsWithContext(ctx context.Context) *PublicCreateUserNamespaceSlotParams {
	var ()
	return &PublicCreateUserNamespaceSlotParams{

		Context: ctx,
	}
}

// NewPublicCreateUserNamespaceSlotParamsWithHTTPClient creates a new PublicCreateUserNamespaceSlotParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicCreateUserNamespaceSlotParamsWithHTTPClient(client *http.Client) *PublicCreateUserNamespaceSlotParams {
	var ()
	return &PublicCreateUserNamespaceSlotParams{
		HTTPClient: client,
	}
}

/*PublicCreateUserNamespaceSlotParams contains all the parameters to send to the API endpoint
for the public create user namespace slot operation typically these are written to a http.Request
*/
type PublicCreateUserNamespaceSlotParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Checksum
	  File checksum, base64 encoded md5

	*/
	Checksum *string
	/*CustomAttribute
	  Custom attribute

	*/
	CustomAttribute *string
	/*File*/
	File runtime.NamedReadCloser
	/*Namespace
	  Namespace ID

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string
	/*Label
	  Label

	*/
	Label *string
	/*Tags
	  Tags

	*/
	Tags []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) WithTimeout(timeout time.Duration) *PublicCreateUserNamespaceSlotParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) WithContext(ctx context.Context) *PublicCreateUserNamespaceSlotParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) WithHTTPClient(client *http.Client) *PublicCreateUserNamespaceSlotParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicCreateUserNamespaceSlotParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChecksum adds the checksum to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) WithChecksum(checksum *string) *PublicCreateUserNamespaceSlotParams {
	o.SetChecksum(checksum)
	return o
}

// SetChecksum adds the checksum to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) SetChecksum(checksum *string) {
	o.Checksum = checksum
}

// WithCustomAttribute adds the customAttribute to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) WithCustomAttribute(customAttribute *string) *PublicCreateUserNamespaceSlotParams {
	o.SetCustomAttribute(customAttribute)
	return o
}

// SetCustomAttribute adds the customAttribute to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) SetCustomAttribute(customAttribute *string) {
	o.CustomAttribute = customAttribute
}

// WithFile adds the file to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) WithFile(file runtime.NamedReadCloser) *PublicCreateUserNamespaceSlotParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithNamespace adds the namespace to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) WithNamespace(namespace string) *PublicCreateUserNamespaceSlotParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) WithUserID(userID string) *PublicCreateUserNamespaceSlotParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLabel adds the label to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) WithLabel(label *string) *PublicCreateUserNamespaceSlotParams {
	o.SetLabel(label)
	return o
}

// SetLabel adds the label to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) SetLabel(label *string) {
	o.Label = label
}

// WithTags adds the tags to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) WithTags(tags []string) *PublicCreateUserNamespaceSlotParams {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the public create user namespace slot params
func (o *PublicCreateUserNamespaceSlotParams) SetTags(tags []string) {
	o.Tags = tags
}

// WriteToRequest writes these params to a swagger request
func (o *PublicCreateUserNamespaceSlotParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Checksum != nil {

		// form param checksum
		var frChecksum string
		if o.Checksum != nil {
			frChecksum = *o.Checksum
		}
		fChecksum := frChecksum
		if fChecksum != "" {
			if err := r.SetFormParam("checksum", fChecksum); err != nil {
				return err
			}
		}

	}

	if o.CustomAttribute != nil {

		// form param customAttribute
		var frCustomAttribute string
		if o.CustomAttribute != nil {
			frCustomAttribute = *o.CustomAttribute
		}
		fCustomAttribute := frCustomAttribute
		if fCustomAttribute != "" {
			if err := r.SetFormParam("customAttribute", fCustomAttribute); err != nil {
				return err
			}
		}

	}

	if o.File != nil {

		if o.File != nil {

			// form file param file
			if err := r.SetFileParam("file", o.File); err != nil {
				return err
			}

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

	if o.Label != nil {

		// query param label
		var qrLabel string
		if o.Label != nil {
			qrLabel = *o.Label
		}
		qLabel := qrLabel
		if qLabel != "" {
			if err := r.SetQueryParam("label", qLabel); err != nil {
				return err
			}
		}

	}

	valuesTags := o.Tags

	joinedTags := swag.JoinByFormat(valuesTags, "multi")
	// query array param tags
	if err := r.SetQueryParam("tags", joinedTags...); err != nil {
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
